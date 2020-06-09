library(ggplot2)

table <- read.table("/home/jefferson/Documentos/PPGCC UFPA/PESQUISA (Prof. Gustavo)/jsengines-differential-testing/paper/R/stackedbar/stacked.data", header = TRUE, sep = "", quote = "\"")
counts <- table(table$Status, table$Engine)

vector <- c(counts["2-Confirmed","Chakra"],
            counts["2-Confirmed","JSC"],
            counts["2-Confirmed","V8"],
            counts["2-Confirmed","Hermes"],
            counts["2-Confirmed","SpiderMonkey"],
            counts["3-Fixed","Chakra"],
            counts["3-Fixed","JSC"],
            counts["3-Fixed","V8"],
            counts["3-Fixed","Hermes"],
            counts["3-Fixed","SpiderMonkey"],
            counts["1-New","Chakra"],
            counts["1-New","JSC"],
            counts["1-New","V8"],
            counts["1-New","Hermes"], 
            counts["1-New","SpiderMonkey"])

df <- data.frame(status=rep(c("2-Confirmed", "3-Fixed", "1-New"), each=5),
                 engine=rep(c("Chakra", "JSC", "V8", "Hermes", "SpiderMonkey"), each=1),
                 number=vector)

ggplot(data=df, aes(x=engine, y=number, fill=status)) +
  geom_bar(stat="identity")  +
  scale_fill_grey(start = 0, end = .9) + 
  theme_bw() +
  theme(axis.text=element_text(size=14), axis.title.x=element_blank(), axis.title.y=element_blank(), legend.text=element_text(size=14), aspect.ratio=0.3, panel.border = element_blank())


