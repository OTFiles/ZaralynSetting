.class public Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
.super Ljava/lang/Object;
.source "SemesterTimeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateBean"
.end annotation


# instance fields
.field private dateType:I

.field private rootYear:I

.field private startDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;I)I
    .locals 0
    .param p0, "x0"    # Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    .param p1, "x1"    # I

    .line 251
    iput p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->dateType:I

    return p1
.end method

.method static synthetic access$102(Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    .param p1, "x1"    # Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->startDate:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getDateType()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->dateType:I

    return v0
.end method

.method public getRootYear()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->rootYear:I

    return v0
.end method

.method public getSolarTimestamp(I)J
    .locals 6
    .param p1, "year"    # I

    .line 279
    iget-object v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->startDate:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "splitString":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 281
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 282
    .local v1, "month":I
    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 283
    .local v3, "day":I
    iget v4, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->dateType:I

    if-ne v4, v2, :cond_0

    .line 284
    new-instance v2, Lcom/readboy/provider/semester/bean/Lunar;

    invoke-direct {v2, p1, v1, v3}, Lcom/readboy/provider/semester/bean/Lunar;-><init>(III)V

    invoke-virtual {v2}, Lcom/readboy/provider/semester/bean/Lunar;->toSolarTimestamp()J

    move-result-wide v4

    return-wide v4

    .line 286
    :cond_0
    new-instance v2, Lcom/readboy/provider/semester/bean/Solar;

    invoke-direct {v2, p1, v1, v3}, Lcom/readboy/provider/semester/bean/Solar;-><init>(III)V

    invoke-virtual {v2}, Lcom/readboy/provider/semester/bean/Solar;->toTimestamp()J

    move-result-wide v4

    return-wide v4

    .line 289
    .end local v1
    .end local v3
    :cond_1
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public setDateType(I)V
    .locals 0
    .param p1, "dateType"    # I

    .line 275
    iput p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->dateType:I

    .line 276
    return-void
.end method

.method public setRootYear(I)V
    .locals 0
    .param p1, "rootYear"    # I

    .line 297
    iput p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->rootYear:I

    .line 298
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "startDate"    # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->startDate:Ljava/lang/String;

    .line 268
    return-void
.end method
