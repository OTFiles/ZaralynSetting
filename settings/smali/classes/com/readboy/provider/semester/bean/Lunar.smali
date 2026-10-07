.class public Lcom/readboy/provider/semester/bean/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# static fields
.field private static final LUNAR_INFO:[I

.field private static final MIN_YEAR:I = 0x7b1


# instance fields
.field public dayOfMonth:I

.field public isLeap:Z

.field public monthLeap:I

.field public monthOfYear:I

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    const/16 v0, 0x84

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/readboy/provider/semester/bean/Lunar;->LUNAR_INFO:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x26fb
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
        0x14b63
        0x9370
        0x49f8
        0x4970
        0x64b0
        0x168a6
        0xea50
        0x6aa0
        0x1a6c4
        0xaae0
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x14b55
        0x4b60
        0xa570
        0x54e4
        0xd160
        0xe968
        0xd520
        0xdaa0
        0x16aa6
        0x56d0
        0x4ae0
        0xa9d4
        0xa2d0
        0xd150
        0xf252
        0xd520
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p3, p0, Lcom/readboy/provider/semester/bean/Lunar;->dayOfMonth:I

    .line 18
    iput p2, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    .line 19
    iput p1, p0, Lcom/readboy/provider/semester/bean/Lunar;->year:I

    .line 20
    invoke-static {p1}, Lcom/readboy/provider/semester/bean/Lunar;->getLunarLeapMonth(I)I

    move-result v0

    iget v1, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/readboy/provider/semester/bean/Lunar;->setLeap(Z)V

    .line 21
    return-void
.end method

.method private static getLunarLeapMonth(I)I
    .locals 5
    .param p0, "lunarYear"    # I

    .line 90
    sget-object v0, Lcom/readboy/provider/semester/bean/Lunar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x7b1

    aget v0, v0, v1

    const/16 v1, 0xf

    and-int/2addr v0, v1

    .line 91
    .local v0, "leapMonth":I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    .line 92
    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    .line 96
    return v0

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5e74\u6570\u636e\u9519\u8bef,lunarYear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/readboy/provider/semester/bean/Lunar;->LUNAR_INFO:[I

    add-int/lit16 v4, p0, -0x7b1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getDayOfMonth()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/readboy/provider/semester/bean/Lunar;->dayOfMonth:I

    return v0
.end method

.method public getMonthLeap()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthLeap:I

    return v0
.end method

.method public getMonthOfYear()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/readboy/provider/semester/bean/Lunar;->year:I

    return v0
.end method

.method public isLeap()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/readboy/provider/semester/bean/Lunar;->isLeap:Z

    return v0
.end method

.method public setDayOfMonth(I)V
    .locals 0
    .param p1, "dayOfMonth"    # I

    .line 36
    iput p1, p0, Lcom/readboy/provider/semester/bean/Lunar;->dayOfMonth:I

    .line 37
    return-void
.end method

.method public setLeap(Z)V
    .locals 0
    .param p1, "leap"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/readboy/provider/semester/bean/Lunar;->isLeap:Z

    .line 29
    return-void
.end method

.method public setMonthLeap(I)V
    .locals 0
    .param p1, "monthLeap"    # I

    .line 60
    iput p1, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthLeap:I

    .line 61
    return-void
.end method

.method public setMonthOfYear(I)V
    .locals 0
    .param p1, "monthOfYear"    # I

    .line 44
    iput p1, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    .line 45
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .line 52
    iput p1, p0, Lcom/readboy/provider/semester/bean/Lunar;->year:I

    .line 53
    return-void
.end method

.method public toSolarTimestamp()J
    .locals 2

    .line 76
    invoke-static {p0}, Lcom/readboy/provider/semester/util/LunarSolarConverter;->LunarToSolar(Lcom/readboy/provider/semester/bean/Lunar;)Lcom/readboy/provider/semester/bean/Solar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/readboy/provider/semester/bean/Solar;->toTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/readboy/provider/semester/bean/Lunar;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/readboy/provider/semester/bean/Lunar;->isLeap:Z

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u95f0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthLeap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    sget-object v1, Lcom/readboy/provider/semester/util/LunarStringUtils;->CHINESE_MONTH:[Ljava/lang/String;

    iget v2, p0, Lcom/readboy/provider/semester/bean/Lunar;->monthOfYear:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/semester/bean/Lunar;->dayOfMonth:I

    .line 70
    invoke-static {v1}, Lcom/readboy/provider/semester/util/LunarStringUtils;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u65e5"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
