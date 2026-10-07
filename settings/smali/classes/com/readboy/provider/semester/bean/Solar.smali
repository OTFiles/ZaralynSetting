.class public Lcom/readboy/provider/semester/bean/Solar;
.super Ljava/lang/Object;
.source "Solar.java"


# instance fields
.field public dayOfMonth:I

.field public monthOfYear:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p3, p0, Lcom/readboy/provider/semester/bean/Solar;->dayOfMonth:I

    .line 16
    iput p2, p0, Lcom/readboy/provider/semester/bean/Solar;->monthOfYear:I

    .line 17
    iput p1, p0, Lcom/readboy/provider/semester/bean/Solar;->year:I

    .line 18
    return-void
.end method


# virtual methods
.method public getDayOfMonth()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/readboy/provider/semester/bean/Solar;->dayOfMonth:I

    return v0
.end method

.method public getMonthOfYear()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/readboy/provider/semester/bean/Solar;->monthOfYear:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/readboy/provider/semester/bean/Solar;->year:I

    return v0
.end method

.method public setDayOfMonth(I)V
    .locals 0
    .param p1, "dayOfMonth"    # I

    .line 32
    iput p1, p0, Lcom/readboy/provider/semester/bean/Solar;->dayOfMonth:I

    .line 33
    return-void
.end method

.method public setMonthOfYear(I)V
    .locals 0
    .param p1, "monthOfYear"    # I

    .line 40
    iput p1, p0, Lcom/readboy/provider/semester/bean/Solar;->monthOfYear:I

    .line 41
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .line 48
    iput p1, p0, Lcom/readboy/provider/semester/bean/Solar;->year:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/readboy/provider/semester/bean/Solar;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/semester/bean/Solar;->monthOfYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/semester/bean/Solar;->dayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimestamp()J
    .locals 8

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 22
    .local v7, "calendar":Ljava/util/Calendar;
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 23
    iget v1, p0, Lcom/readboy/provider/semester/bean/Solar;->year:I

    iget v0, p0, Lcom/readboy/provider/semester/bean/Solar;->monthOfYear:I

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/readboy/provider/semester/bean/Solar;->dayOfMonth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 24
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
