
demog$SEX <- factor(demog$SEX, levels = c("Female", "Male"), ordered = FALSE)
save_data(demog,"demog","/home/shinichi/workspaceRemote/lalab/___project/test/Dataset/___datasets/demog")

