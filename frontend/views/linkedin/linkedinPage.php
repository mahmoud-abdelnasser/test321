<?php
$this->title = 'LinkedIn';
$updates = count($statistics['updates']);
$days_count = count($statistics['days']);
?>
<div class="page-content inside linkeidn">

    <div class="container">

	<div class="inner-page">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-box">
                        <h2 class="internal-title sec-title"><?= $oModel->name ?></h2>
                        <div class="line-box"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3 class="internal-title linkeidn ">KPIs Overview</h3>
                    <div class="internal-content">
                        <ul>
                            <div class="row">
                                <li><span class="small-title">Updates : </span><?= $updates ?></li>
                                <li><span class="small-title">Avg. Daily updates : </span><?= $statistics['avg_daily_updates'] ?></li>
                                <li><span class="small-title">Interactions : </span><?= $statistics['interactions'] ?></li>
                                <li><span class="small-title">Avg. Daily Interactions : </span><?= $statistics['avg_daily_interactions'] ?></li>
                                <li><span class="small-title">Impressions : </span><?= $statistics['impressions'] ?></li>
                                <li><span class="small-title">Avg. Daily Reach : </span><?= $statistics['avg_daily_reach'] ?></li>
                                <li><span class="small-title">Clicks : </span><?= $statistics['clicks'] ?></li>
                                <li><span class="small-title">Followers : </span><?= $statistics['new_followers'] ?></li>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3 class="internal-title linkeidn ">Interactions On Updates</h3>
                    <div class="internal-content">
                        <ul>
                            <div class="row">
                                <li><span class="small-title">Interactions Total : </span><?= $statistics['interactions'] ?></li>
                                <li><span class="small-title">New Updates Total : </span><?= count($statistics['updates']) ?></li>
                                <li><span class="small-title">Interactions on New Updates : </span><?= $statistics['sums_of_all_updates_statistics']['interactions'] ?></li>
                                <li><span class="small-title">Interactions per New Update : </span><?= round((($statistics['sums_of_all_updates_statistics']['interactions'])/$updates), 1) ?></li>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?= $this->render('_updatesByDayChart', ['updates_by_day_json_table' => $linkedin->getUpdatesByDayJsonTable($statistics['updates_statistics_by_day'])]); ?>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?= $this->render('_interactionsByDayChart', ['interactions_by_day_json_table' => $linkedin->getInteractionsByDayJsonTable($statistics['days'], $statistics['updates_statistics_by_day'], $statistics['company_views_statistics_by_day'])]); ?>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3 class="internal-title linkeidn ">Interactions Distribution</h3>
                    <div class="internal-content">
                        <ul>
                            <div class="row">
                                <li><span class="small-title">Total Likes : </span><?= $statistics['likes'] ?></li>
                                <li><span class="small-title">Likes on New Updates : </span><?= $statistics['sums_of_all_updates_statistics']['likes'] ?></li>
                                <li><span class="small-title">Likes per New Updates : </span><?= round((($statistics['sums_of_all_updates_statistics']['likes'])/$days_count), 1) ?></li>
                                <li><span class="small-title">Total Comments : </span><?= $statistics['comments'] ?></li>
                                <li><span class="small-title">Comments on New Updates : </span><?= $statistics['sums_of_all_updates_statistics']['comments'] ?></li>
                                <li><span class="small-title">Comments per New Updates : </span><?= round((($statistics['sums_of_all_updates_statistics']['comments'])/$days_count), 1) ?></li>
                                <li><span class="small-title">Total Shares : </span><?= $statistics['shares'] ?></li>
                                <li><span class="small-title">Shares on New Updates : </span><?= $statistics['sums_of_all_updates_statistics']['shares'] ?></li>
                                <li><span class="small-title">Shares per New Updates : </span><?= round((($statistics['sums_of_all_updates_statistics']['shares'])/$days_count), 1) ?></li>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?= $this->render('_interactionsDistributionByDayChart', ['interactions_distribution_by_day_json_table' => $linkedin->getInteractionsDistributionByDayJsonTable($statistics['company_views_statistics_by_day'])]); ?>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3 class="internal-title linkeidn ">Clicks OverTime</h3>
                    <div class="internal-content">
                        <ul>
                            <div class="row">
                                <li><span class="small-title">Total Clicks : </span><?= $statistics['clicks'] ?></li>
                                <li><span class="small-title">Clicks on New Updates : </span><?= $statistics['sums_of_all_updates_statistics']['clicks'] ?></li>
                                <li><span class="small-title">Clicks per New Updates : </span><?= round((($statistics['sums_of_all_updates_statistics']['clicks'])/$days_count), 1) ?></li>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?= $this->render('_clicksByDayChart', ['clicks_by_day_json_table' => $linkedin->getClicksByDayJsonTable($statistics['company_views_statistics_by_day'])]); ?>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3 class="internal-title linkeidn ">Impressions OverTime</h3>
                    <div class="internal-content">
                        <ul>
                            <div class="row">
                                <li><span class="small-title">Total Impressions : </span><?= $statistics['impressions'] ?></li>
                                <li><span class="small-title">Impressions on New Updates : </span><?= $statistics['sums_of_all_updates_statistics']['impressions'] ?></li>
                                <li><span class="small-title">Impressions per New Updates : </span><?= round((($statistics['sums_of_all_updates_statistics']['impressions'])/$days_count), 1) ?></li>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?= $this->render('_impressionsByDayChart', ['impressions_by_day_json_table' => $linkedin->getImpressionsByDayJsonTable($statistics['company_views_statistics_by_day'])]); ?>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3 class="internal-title linkeidn ">Followers OverTime</h3>
                    <div class="internal-content">
                        <ul>
                            <div class="row">
                                <li><span class="small-title">Total Followers : </span><?= $statistics['total_followers'] ?></li>
                                <li><span class="small-title">Gained Followers : </span><?= $statistics['new_followers'] ?></li>
                                <li><span class="small-title">Organic Followers : </span><?= $statistics['organic_followers'] ?></li>
                                <li><span class="small-title">New Organic Followers : </span><?= ($statistics['organic_followers'] - $statistics['followers']['values'][0]['organicFollowerCount']) ?></li>
                                <li><span class="small-title">Paid Followers : </span><?= $statistics['paid_followers'] ?></li>
                                <li><span class="small-title">New Paid Followers : </span><?= ($statistics['paid_followers'] - $statistics['followers']['values'][0]['paidFollowerCount']) ?></li>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?= $this->render('_followersByDayChart', ['followers_by_day_json_table' => $linkedin->getFollowersByDayJsonTable($statistics['followers_array'])]); ?>
                </div>
            </div>
            <?= $this->render('_followersDemographics', ['followers_statistics' => $statistics['company_statistics']['followStatistics'], 'linkedin' => $linkedin]); ?>
            
            <div class="row">
		<div class="col-md-12">
                    <?= $this->render('_bestTimeToPostChart', ['best_time_to_post_json_table' => $linkedin->getBestTimeToPostJsonTable($statistics['updates'])]); ?>
		</div>
            </div>
            
            <?= $this->render('_topPosts', ['top_updates' => $statistics['updates'], 'updates_statistics' => $statistics['updates_statistics']]); ?>
            
            
            
	</div>
        
    </div>
    <!-- inner page -->
    
</div>
<!-- page content -->
