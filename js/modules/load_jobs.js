define(['text!template/job_list.html'], function (job_list) {
         
        var jobs = '';
        $('#skeletal_sidebar_content').append(job_list);
        LD.ui.animateMainX(300);
        
        LD.ui.console('exiting job_list module');
        
        return jobs;
    });