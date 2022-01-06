#mongodb NoSQL query

db.member.aggregate([
    {$group:{_id:{"page_ID":"$page_ID", "user_ID":"$user_ID"}, topUser:{$max:"$level"}}},
    {$sort:{topUser:-1}}
    ]);

db.user.find({state:"California"});
