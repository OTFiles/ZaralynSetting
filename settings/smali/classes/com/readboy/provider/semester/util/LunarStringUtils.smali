.class public Lcom/readboy/provider/semester/util/LunarStringUtils;
.super Ljava/lang/Object;
.source "LunarStringUtils.java"


# static fields
.field public static final CHINESE_MONTH:[Ljava/lang/String;

.field public static final CHINESE_NUMBER:[Ljava/lang/String;

.field public static final NUMBER:Ljava/lang/String; = "0123456789"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 8
    const-string v0, "\u6b63"

    const-string v1, "\u4e8c"

    const-string v2, "\u4e09"

    const-string v3, "\u56db"

    const-string v4, "\u4e94"

    const-string v5, "\u516d"

    const-string v6, "\u4e03"

    const-string v7, "\u516b"

    const-string v8, "\u4e5d"

    const-string v9, "\u5341"

    const-string v10, "\u51ac"

    const-string v11, "\u814a"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/semester/util/LunarStringUtils;->CHINESE_MONTH:[Ljava/lang/String;

    .line 10
    const-string v1, "\u3007"

    const-string v2, "\u4e00"

    const-string v3, "\u4e8c"

    const-string v4, "\u4e09"

    const-string v5, "\u56db"

    const-string v6, "\u4e94"

    const-string v7, "\u516d"

    const-string v8, "\u4e03"

    const-string v9, "\u516b"

    const-string v10, "\u4e5d"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/semester/util/LunarStringUtils;->CHINESE_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChinaDayString(I)Ljava/lang/String;
    .locals 4
    .param p0, "day"    # I

    .line 16
    const/16 v0, 0x1e

    if-le p0, v0, :cond_0

    .line 17
    const-string v0, ""

    return-object v0

    .line 19
    :cond_0
    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    .line 20
    const-string v0, "\u521d\u5341"

    return-object v0

    .line 21
    :cond_1
    const/16 v1, 0x14

    if-ne p0, v1, :cond_2

    .line 22
    const-string v0, "\u4e8c\u5341"

    return-object v0

    .line 23
    :cond_2
    if-ne p0, v0, :cond_3

    .line 24
    const-string v0, "\u4e09\u5341"

    return-object v0

    .line 26
    :cond_3
    const-string v0, "\u521d"

    const-string v1, "\u5341"

    const-string v2, "\u5eff"

    const-string v3, "\u4e09"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "chineseTen":[Ljava/lang/String;
    rem-int/lit8 v1, p0, 0xa

    if-nez v1, :cond_4

    const/16 v1, 0x9

    goto :goto_0

    :cond_4
    rem-int/lit8 v1, p0, 0xa

    .line 28
    .local v1, "n":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/readboy/provider/semester/util/LunarStringUtils;->CHINESE_NUMBER:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
