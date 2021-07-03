
demog$AGECAT <- factor(demog$AGECAT, levels = c("< 60yrs", ">=60-<65yrs", ">=65-<75yrs", "=>75yrs"), ordered = FALSE)
save_data(demog,"demog","/home/shinichi/workspaceRemote/lalab/___project/test/Dataset/___datasets/demog")

