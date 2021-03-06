<?php
namespace common\models\base\form;

use Yii;
use yii\base\Model;

/**
 * Login form
 */
class Login extends Model
{
    public $email;
    public $password;
    public $rememberMe = true;

    private $_user = false;


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            // username and password are both required
            [['email', 'password'], 'required'],
          	[['email'], 'email'],
            // rememberMe must be a boolean value
            ['rememberMe', 'boolean'],
            // password is validated by validatePassword()
            ['password', 'ruleValidatePassword'],
        ];
    }

    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     *
     * @param string $attribute the attribute currently being validated
     * @param array $params the additional name-value pairs given in the rule
     */
    public function ruleValidatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
            if (!$user || !$user->validatePassword($this->password)) {
                $this->addError($attribute, 'Incorrect username or password.');
            }
        }
    }

    /**
     * Logs in a user using the provided username and password.
     *
     * @return boolean whether the user is logged in successfully
     */
    public function login()
    {
        if ($this->validate()) {
            return Yii::$app->user->login($this->getUser(), $this->rememberMe ? 3600 * 24 * 30 : 0);
        } else {
            return false;
        }
    }

    public  function  LoginDb($id){
        return \Yii::$app->user->login($this->getUserById($id),  3600 * 24 * 30 );
    }
    public function getUserById($id)
    {
        if ($this->_user === false) {
            $this->_user = \common\models\base\User::findByUserId($id);
        }

        return $this->_user;
    }


    /**
     * Finds user by [[username]]
     *
     * @return User|null
     */
    public function getUser()
    {
        if ($this->_user === false) {
            $this->_user = \common\models\base\User::findByEmail($this->email);
        }

        return $this->_user;
    }
}
