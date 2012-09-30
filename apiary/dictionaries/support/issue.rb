module Dictionaries
  module Issue
    def self.saved_with_journal
      {  
        "issue"=>  {
          "created_on"=>"2012/09/16 14:53:42 +0200", 
          "description"=> "Textual description in multiple lines \r\n http://www.redmine.org/projects/redmine/wiki/Rest_api",
          "status"=>  { 
            "name"=>"Resolved",
            "id"=>3
          }, 
          "subject"=>"Update redmine.dev.vmin.cz to 1.4+",
          "spent_hours"=>0.0, 
          "author"=> {
            "name"=>"Adam Kliment",
            "id"=>5
          },
          "assigned_to" => {
            "name"=>"Adam Kliment",
            "id"=>5
          }, 
          "done_ratio" => 0,
          "tracker"=> {
            "name"=>"Feature",
            "id"=>2
          }, 
          "start_date"=>"2012/09/16",
          "project" => {
            "name" => "Support issue tracker",
             "id"=>65
           },
           "journals" => [
             {
               "created_on"=>"2012/09/16 21:16:02 +0200", 
               "notes"=>"Texttual comment\r\nin multiple lines", 
               "details"=> [
                 {
                   "old_value"=>"1",
                   "name"=>"status_id", 
                   "property"=>"attr", 
                   "new_value"=>"2"
                 }, 
                 {
                   "old_value"=>"5", 
                   "name"=>"assigned_to_id", 
                   "property"=>"attr", 
                   "new_value"=>"4"
                 }
               ], 
               "user"=> {
                 "name"=>"jan kaufman", 
                 "id"=>4
               }, 
               "id"=>845
             }, 
             {
               "created_on"=> "2012/09/17 00:25:14 +0200", 
               "notes"=>"solved at #239\r\n", 
               "details"=> [
                 {
                   "old_value"=>"2", 
                   "name"=>"status_id", 
                   "property"=>"attr",
                   "new_value"=>"3"
                 }, 
                 {
                   "old_value"=>"4", 
                   "name"=>"assigned_to_id", 
                   "property"=>"attr", 
                   "new_value"=>"5"
                 }
               ], 
               "user"=> { 
                 "name"=>"jan kaufman", 
                 "id"=>4
               }, 
               "id"=>859
             }
           ],
           "updated_on"=>"2012/09/17 00:25:14 +0200",
           "id"=>469, 
           "due_date"=>"2012/09/20", 
           "fixed_version"=>{
             "name"=>"Dispatching",
             "id"=>17
           },
           "priority" => {
             "name"=>"High",
             "id"=>5
           }
         }
       }
    end

    def self.saved
      {  
        "issue"=>  {
          "created_on"=>"2012/09/16 14:53:42 +0200", 
          "description"=> "Textual description in multiple lines \r\n http://www.redmine.org/projects/redmine/wiki/Rest_api",
          "status"=>  { 
            "name"=>"Resolved",
            "id"=>3
          }, 
          "subject"=>"Update redmine.dev.vmin.cz to 1.4+",
          "spent_hours"=>0.0, 
          "author"=> {
            "name"=>"Adam Kliment",
            "id"=>5
          },
          "assigned_to" => {
            "name"=>"Adam Kliment",
            "id"=>5
          }, 
          "done_ratio" => 0,
          "tracker"=> {
            "name"=>"Feature",
            "id"=>2
          }, 
          "start_date"=>"2012/09/16",
          "project" => {
            "name" => "Support issue tracker",
             "id"=>65
           },
           "updated_on"=>"2012/09/17 00:25:14 +0200",
           "id"=>469, 
           "due_date"=>"2012/09/20", 
           "fixed_version"=>{
             "name"=>"Dispatching",
             "id"=>17
           },
           "priority" => {
             "name"=>"High",
             "id"=>5
           }
         }
       }
    end

    def self.all_saved
      {
        "limit" =>  '25',
        "total_count" => '2',
        "offset" => '0',
        "issues" =>  [
          self.saved['issue'], 
          self.saved['issue']
        ]
      }
    end

    def self.new_record
      {
        "issue" =>  {
          "project_id" => "example",
          "subject" => "Update redmine.dev.vmin.cz to 1.4+",
          "description" => "Textual description in multiple lines \r\n http://www.redmine.org/projects/redmine/wiki/Rest_api",
        }
      }
    end
    def self.update_record
      {
        "issue" =>  {
          "subject" => "Example issue (was: Test issue)",
          "notes" => "Changing the subject"
        }
      }
    end

  end
end
