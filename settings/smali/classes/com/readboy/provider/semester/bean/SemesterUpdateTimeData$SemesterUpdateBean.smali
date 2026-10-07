.class public Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;
.super Ljava/lang/Object;
.source "SemesterUpdateTimeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemesterUpdateBean"
.end annotation


# instance fields
.field private uid:I

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUid()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->uid:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->updateTime:J

    return-wide v0
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 86
    iput p1, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->uid:I

    .line 87
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0
    .param p1, "updateTime"    # J

    .line 94
    iput-wide p1, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->updateTime:J

    .line 95
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "uid"

    iget v2, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->uid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v1, "updateTime"

    iget-wide v2, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->updateTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 105
    .end local v1
    :goto_0
    return-object v0
.end method
