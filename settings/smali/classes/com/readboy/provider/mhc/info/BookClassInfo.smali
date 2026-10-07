.class public Lcom/readboy/provider/mhc/info/BookClassInfo;
.super Ljava/lang/Object;
.source "BookClassInfo.java"


# static fields
.field public static final CLASS_NUMBER:I = 0x5

.field public static final SUBJECT_FIELD:[Ljava/lang/String;

.field public static final SUBJECT_GONE:I = 0x1

.field public static final SUBJECT_NAME:[Ljava/lang/String;

.field public static final SUBJECT_NAME_STAGE_1:[Ljava/lang/String;

.field public static final SUBJECT_VISIBLE:I


# instance fields
.field public barCode:Ljava/lang/String;

.field public bookId:I

.field public bookName:Ljava/lang/String;

.field public chapterId:I

.field public chapterIndex:I

.field public chapterName:Ljava/lang/String;

.field public classId:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public coverPath:Ljava/lang/String;

.field public editionId:I

.field public editionName:Ljava/lang/String;

.field public gradeId:I

.field public pressId:I

.field public pressName:Ljava/lang/String;

.field public sectionId:I

.field public sectionIndex:I

.field public sectionName:Ljava/lang/String;

.field public semesterId:I

.field public subjectId:I

.field public subjectVisible:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 12
    const-string v0, "\u8bed\u6587"

    const-string v1, "\u6570\u5b66"

    const-string v2, "\u82f1\u8bed"

    const-string v3, "\u7269\u7406"

    const-string v4, "\u5316\u5b66"

    const-string v5, "\u751f\u7269"

    const-string v6, "\u653f\u6cbb"

    const-string v7, "\u5386\u53f2"

    const-string v8, "\u5730\u7406"

    const-string v9, "\u79d1\u5b66"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/mhc/info/BookClassInfo;->SUBJECT_NAME:[Ljava/lang/String;

    .line 19
    const-string v0, "\u8bed\u6587"

    const-string v1, "\u6570\u5b66"

    const-string v2, "\u82f1\u8bed"

    const-string v3, "\u79d1\u5b66"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/mhc/info/BookClassInfo;->SUBJECT_NAME_STAGE_1:[Ljava/lang/String;

    .line 25
    const-string v1, "yw"

    const-string v2, "sx"

    const-string v3, "yy"

    const-string v4, "wl"

    const-string v5, "hx"

    const-string v6, "sw"

    const-string v7, "zz"

    const-string v8, "ls"

    const-string v9, "dl"

    const-string v10, "kx"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/mhc/info/BookClassInfo;->SUBJECT_FIELD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookId:I

    .line 46
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterId:I

    .line 48
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterIndex:I

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterName:Ljava/lang/String;

    .line 52
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionId:I

    .line 54
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionIndex:I

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionName:Ljava/lang/String;

    .line 59
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->semesterId:I

    .line 63
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->gradeId:I

    .line 65
    const/4 v1, 0x1

    iput v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    .line 68
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionId:I

    .line 70
    const-string v1, ""

    iput-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionName:Ljava/lang/String;

    .line 73
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressId:I

    .line 75
    const-string v1, ""

    iput-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressName:Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectVisible:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->coverPath:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->barCode:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->classId:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearBookInfo()V
    .locals 2

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookName:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookId:I

    .line 100
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->semesterId:I

    .line 101
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterId:I

    .line 102
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterIndex:I

    .line 103
    const-string v1, ""

    iput-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterName:Ljava/lang/String;

    .line 104
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionId:I

    .line 105
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionIndex:I

    .line 106
    const-string v1, ""

    iput-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionName:Ljava/lang/String;

    .line 107
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->gradeId:I

    .line 108
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionId:I

    .line 109
    const-string v1, ""

    iput-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionName:Ljava/lang/String;

    .line 110
    const-string v1, ""

    iput-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->coverPath:Ljava/lang/String;

    .line 111
    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressId:I

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressName:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->barCode:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectField()Ljava/lang/String;
    .locals 2

    .line 153
    iget v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    sget-object v1, Lcom/readboy/provider/mhc/info/BookClassInfo;->SUBJECT_FIELD:[Ljava/lang/String;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 155
    sget-object v0, Lcom/readboy/provider/mhc/info/BookClassInfo;->SUBJECT_FIELD:[Ljava/lang/String;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 157
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSubjectName()Ljava/lang/String;
    .locals 2

    .line 144
    iget v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    sget-object v1, Lcom/readboy/provider/mhc/info/BookClassInfo;->SUBJECT_NAME:[Ljava/lang/String;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 146
    sget-object v0, Lcom/readboy/provider/mhc/info/BookClassInfo;->SUBJECT_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 148
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public refreshBookInfo(Lcom/readboy/provider/mhc/info/BookClassInfo;)V
    .locals 1
    .param p1, "bookInfo"    # Lcom/readboy/provider/mhc/info/BookClassInfo;

    .line 119
    iget-object v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookName:Ljava/lang/String;

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookName:Ljava/lang/String;

    .line 120
    iget v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookId:I

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookId:I

    .line 121
    iget v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->semesterId:I

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->semesterId:I

    .line 122
    iget v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterId:I

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterId:I

    .line 123
    iget v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterIndex:I

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterIndex:I

    .line 124
    iget-object v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterName:Ljava/lang/String;

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterName:Ljava/lang/String;

    .line 125
    iget v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionId:I

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionId:I

    .line 126
    iget v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionIndex:I

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionIndex:I

    .line 127
    iget-object v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionName:Ljava/lang/String;

    .line 128
    iget v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->gradeId:I

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->gradeId:I

    .line 129
    iget v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionId:I

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionId:I

    .line 130
    iget-object v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionName:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->coverPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->coverPath:Ljava/lang/String;

    .line 132
    iget v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressId:I

    iput v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressId:I

    .line 133
    iget-object v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressName:Ljava/lang/String;

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressName:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lcom/readboy/provider/mhc/info/BookClassInfo;->barCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->barCode:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e66\u672c\u4fe1\u606f\uff1a\n \tbookName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n \tbookId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \tsemeterId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->semesterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \tchapterId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \tchapterIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \tchapterName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n \tsectionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \tsectionIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \tsectionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n \tgradeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->gradeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \tsubjectId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \teditionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \teditionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n \tpressId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n \tpressName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n \tcoverPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->coverPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n \tclassId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->classId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n \tclassName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/BookClassInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
