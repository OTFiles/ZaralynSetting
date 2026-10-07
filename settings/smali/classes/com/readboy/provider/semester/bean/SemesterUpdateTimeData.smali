.class public Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;
.super Ljava/lang/Object;
.source "SemesterUpdateTimeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;
    }
.end annotation


# instance fields
.field private semesterUpdateInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->semesterUpdateInfo:Ljava/util/List;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 35
    new-instance v0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;

    invoke-direct {v0}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;-><init>()V

    .line 36
    .local v0, "semesterUpdateTimeData":Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;
    if-eqz p0, :cond_1

    .line 37
    const-string v1, "semesterUpdateInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 38
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 40
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 41
    .local v3, "jsonObject1":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 42
    new-instance v4, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;

    invoke-direct {v4}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;-><init>()V

    .line 43
    .local v4, "semesterBean":Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;
    const-string v5, "uid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->setUid(I)V

    .line 44
    const-string v5, "updateTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->setUpdateTime(J)V

    .line 45
    invoke-virtual {v0}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->getSemesterUpdateInfo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v3
    .end local v4
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v1
    .end local v2
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getSemesterUpdateBean(I)Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;
    .locals 3
    .param p1, "uid"    # I

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->semesterUpdateInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->semesterUpdateInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;

    .line 25
    .local v1, "semesterUpdateBean":Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 27
    return-object v1

    .line 23
    .end local v1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSemesterUpdateInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->semesterUpdateInfo:Ljava/util/List;

    return-object v0
.end method

.method public setSemesterUpdateInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "semester":Ljava/util/List;, "Ljava/util/List<Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;>;"
    iput-object p1, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->semesterUpdateInfo:Ljava/util/List;

    .line 20
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 5

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 56
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->semesterUpdateInfo:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 57
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->semesterUpdateInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->semesterUpdateInfo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;

    .line 59
    .local v3, "semesterUpdateBean":Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;
    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v3}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2
    :cond_1
    :try_start_0
    const-string v2, "semesterUpdateInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    .end local v2
    :goto_1
    return-object v0
.end method
