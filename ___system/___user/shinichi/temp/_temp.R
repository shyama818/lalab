adj <- readRDS("/home/shinichi/workspaceRemote/lalab/___project/test/Dataset/___datasets/adj/___data/adj.rds")
anti <- readRDS("/home/shinichi/workspaceRemote/lalab/___project/test/Dataset/___datasets/anti/___data/anti.rds")
bld <- readRDS("/home/shinichi/workspaceRemote/lalab/___project/test/Dataset/___datasets/bld/___data/bld.rds")
bldef <- readRDS("/home/shinichi/workspaceRemote/lalab/___project/test/Dataset/___datasets/bldef/___data/bldef.rds")
demog <- readRDS("/home/shinichi/workspaceRemote/lalab/___project/test/Dataset/___datasets/demog/___data/demog.rds")

demog$SEX <- factor(demog$SEX, levels = c("Female", "Male"), ordered = FALSE)
save_data(demog,"demog","/home/shinichi/workspaceRemote/lalab/___project/test/Dataset/___datasets/demog")

saveRDS(c(1), file="/home/shinichi/workspaceRemote/lalab/___system/___user/shinichi/end/_end.R")


