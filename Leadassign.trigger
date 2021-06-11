trigger Leadassign on Lead (before insert) {
for (Lead l : Trigger.new) {
l.Status = 'Open - Not Contacted';
l.LeadSource = 'Web';
l.Rating = 'Warm';
}

}