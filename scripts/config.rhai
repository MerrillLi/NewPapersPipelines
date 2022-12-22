let titles_type = ["Dataset", "Survey", "Benchmark"];

let titles_model = [
    // Meta Learning & Transfer Learning
    "Transfer", "Meta-Learning", 
    // Mobile Intelligence
    "Mobile", "Quantized", "Quantization", "Communication", "Federated",
    // RecSys
    "Stream", "Streaming", "Recommendation", "Embedding",
    // Data Mining
    "Time Series", "Predict", "Forecast", "Hyperbolic", "Graph Neural Network"
];

let titles =  titles_model + titles_type;

let authors_array = [
    // Meta Learning & Transfer Learning
    "Chelsea Finn", "Qiang Yang", "Ying Wei",
    // Mobile Intelligence
    "Song Guo", "Xu Chen", "Song Han", "Ju Ren", "Vincent Poor", "H. Vincent Poor"
    // RecSys
    "Xiangnan He", "Min Zhang",
    // Data Mining
    "Philip S. Yu", "Jiawei Han", "Jure Leskovec", "Hui Xiong", "Irwin King",
    // Network
    "Haipeng Dai", "Kai Chen"
];

let conferences = [
    // AI
    "AAAI", "ACM MM", "AISTATS", "FUZZ IEEE", "ICRA", "IJCAI", "IJCNN", "IROS", "SIGGRAPH", "STOC", "UAI", "TAAI",
    // CV
    "ACM MM", "CVPR", "ECCV", "ICCV", "MICCAI", "SIGGRAPH",
    // DM
    "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "KDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW",
    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "EMNLP", "ICASSP", "INTERSPEECH", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL",
    // Arch
    "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security",
    // Network
    "INFOCOM", "NSDI", "MobiCom", "MobiSys", "SIGCOMM", "IWQoS", "ICDCS"

];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;