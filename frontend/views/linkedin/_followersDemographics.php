<?php
    $company_size = $linkedin->getCompanySize($followers_statistics['companySizes']['values']);
    $country = $linkedin->getCountry($followers_statistics['countries']['values']);
    $industry = $linkedin->getIndustry($followers_statistics['industries']['values']);
    $seniority = $linkedin->getSeniority($followers_statistics['seniorities']['values']);
    $function = $linkedin->getJobs($followers_statistics['functions']['values']);
?>


<div class="row">
    <div class="col-md-12">
        <div class="title-box">
            <h2 class="internal-title sec-title">Followers Demographics</h2>
            <div class="line-box"></div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <h3 class="internal-title linkeidn ">Followers OverTime</h3>
        <div class="internal-content">
            <ul>
                <div class="row">
                    <li><span class="small-title">Total Followers : </span><?= $followers_statistics['count'] ?></li>
                    <li><span class="small-title">Employees : </span><?= $followers_statistics['employeeCount'] ?></li>
                    <li><span class="small-title">Non-Employees : </span><?= $followers_statistics['nonEmployeeCount'] ?></li>
                </div>
            </ul>
        </div>
    </div>
</div>
<div class="row"> 
    <div class="col-md-12">
        <?= $this->render('_followersCompanySize', ['company_size_statistics_json_table' => $linkedin->getCompanySizeJsonTable($company_size)]); ?>
    </div>
    <div class="col-md-12">
        <?= $this->render('_followersCountry', ['country_statistics_json_table' => $linkedin->getCountryJsonTable($country)]); ?>
    </div>
    <div class="col-md-12">
        <?= $this->render('_followersIndustry', ['industry_statistics_json_table' => $linkedin->getIndustryJsonTable($industry)]); ?>       
    </div>
</div>
<div class="row"> 
    <div class="col-md-12">
        <?= $this->render('_followersJobs', ['job_statistics_json_table' => $linkedin->getJobsJsonTable($function)]); ?>
    </div>
    <div class="col-md-12">
        <?= $this->render('_followersSeniorities', ['seniority_statistics_json_table' => $linkedin->getSeniorityJsonTable($seniority)]); ?>
    </div>
</div>