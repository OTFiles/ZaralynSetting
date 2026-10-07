.class public Lcom/readboy/provider/semester/bean/SemesterTimeData;
.super Ljava/lang/Object;
.source "SemesterTimeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

.field private lastYearSummerTime:J

.field private lastYearWinterTime:J

.field private msg:Ljava/lang/String;

.field private ok:I

.field private semesterUpdateBean:Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isInTimeScope(JJJ)Z
    .locals 4
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "time"    # J

    .line 125
    cmp-long v0, p3, p1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 126
    return v1

    .line 128
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_3

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    cmp-long v0, p5, p3

    if-gez v0, :cond_2

    cmp-long v0, p5, p1

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 129
    :cond_3
    :goto_0
    return v1
.end method

.method public static parse(Landroid/content/Context;I)Lcom/readboy/provider/semester/bean/SemesterTimeData;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 141
    new-instance v0, Lcom/readboy/provider/semester/bean/SemesterTimeData;

    invoke-direct {v0}, Lcom/readboy/provider/semester/bean/SemesterTimeData;-><init>()V

    .line 142
    .local v0, "semesterTimeData":Lcom/readboy/provider/semester/bean/SemesterTimeData;
    const/4 v1, 0x0

    .line 144
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/readboy/provider/semester/util/SemesterUtil;->getBaseConfigSemesterTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "semesterData":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->parse(Lorg/json/JSONObject;)Lcom/readboy/provider/semester/bean/SemesterTimeData;

    move-result-object v3

    move-object v0, v3

    .line 147
    invoke-static {p0}, Lcom/readboy/provider/semester/util/SemesterUtil;->getBaseConfigSemesterUpdateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "sutData":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 149
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->parse(Lorg/json/JSONObject;)Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;

    move-result-object v4

    .line 150
    .local v4, "sut":Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;
    invoke-virtual {v4, p1}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData;->getSemesterUpdateBean(I)Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->setSemesterUpdateBean(Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;)V

    .line 156
    .end local v2
    .end local v3
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 157
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 156
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .end local v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    :goto_1
    return-object v0

    .line 156
    :goto_2
    if-eqz v1, :cond_2

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_2
    throw v2
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/readboy/provider/semester/bean/SemesterTimeData;
    .locals 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 164
    new-instance v0, Lcom/readboy/provider/semester/bean/SemesterTimeData;

    invoke-direct {v0}, Lcom/readboy/provider/semester/bean/SemesterTimeData;-><init>()V

    .line 165
    .local v0, "semesterTimeData":Lcom/readboy/provider/semester/bean/SemesterTimeData;
    if-eqz p0, :cond_2

    .line 166
    const-string v1, "msg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->msg:Ljava/lang/String;

    .line 167
    const-string v1, "ok"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->ok:I

    .line 168
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 169
    .local v1, "dataObj":Lorg/json/JSONObject;
    const-string v2, "lastYearSummerTime"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->lastYearSummerTime:J

    .line 170
    const-string v2, "lastYearWinterTime"

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->lastYearWinterTime:J

    .line 171
    if-eqz v1, :cond_2

    .line 172
    new-instance v2, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

    invoke-direct {v2}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;-><init>()V

    .line 173
    .local v2, "dataBean":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;
    const-string v3, "year"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->setYear(I)V

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->setDate(Ljava/util/List;)V

    .line 175
    const-string v3, "date"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 176
    .local v3, "dateArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 177
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 178
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 179
    .local v5, "dateObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 180
    new-instance v6, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;

    invoke-direct {v6}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;-><init>()V

    .line 181
    .local v6, "dateBean":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    const-string v7, "dateType"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->access$002(Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;I)I

    .line 182
    const-string v7, "startDate"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->access$102(Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    invoke-virtual {v2}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->getYear()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->setRootYear(I)V

    .line 184
    invoke-virtual {v2}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->getDate()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v5
    .end local v6
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v4
    :cond_1
    invoke-virtual {v0, v2}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->setData(Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;)V

    .line 191
    .end local v1
    .end local v2
    .end local v3
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getData()Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->data:Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

    return-object v0
.end method

.method public getMostDateBean(Z)Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    .locals 10
    .param p1, "isMostBigTime"    # Z

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "targetDate":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    iget-object v1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->data:Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

    if-eqz v1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->data:Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

    invoke-virtual {v1}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->getYear()I

    move-result v1

    .line 350
    .local v1, "year":I
    iget-object v2, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->data:Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

    invoke-virtual {v2}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->getDate()Ljava/util/List;

    move-result-object v2

    .line 351
    .local v2, "dateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;>;"
    if-eqz v2, :cond_3

    .line 352
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 353
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;

    .line 354
    .local v4, "dateBean":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    if-eqz v4, :cond_2

    .line 355
    if-nez v0, :cond_0

    .line 356
    move-object v0, v4

    goto :goto_1

    .line 358
    :cond_0
    invoke-virtual {v4, v1}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getSolarTimestamp(I)J

    move-result-wide v5

    .line 359
    .local v5, "dateTimestamp":J
    invoke-virtual {v0, v1}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getSolarTimestamp(I)J

    move-result-wide v7

    .line 360
    .local v7, "targetTimestamp":J
    if-eqz p1, :cond_1

    .line 361
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 362
    move-object v0, v4

    goto :goto_1

    .line 365
    :cond_1
    cmp-long v9, v5, v7

    if-gez v9, :cond_2

    .line 366
    move-object v0, v4

    .line 352
    .end local v4
    .end local v5
    .end local v7
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 374
    .end local v1
    .end local v2
    .end local v3
    :cond_3
    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOk()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->ok:I

    return v0
.end method

.method public getSemesterUpdateBean()Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->semesterUpdateBean:Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;

    return-object v0
.end method

.method public getTermTypeDialog(JZ)I
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "isUseDefaultTime"    # Z

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getTermTypeDialog(JZZ)I

    move-result v0

    return v0
.end method

.method public getTermTypeDialog(JZZ)I
    .locals 24
    .param p1, "currentTime"    # J
    .param p3, "isUseDefaultTime"    # Z
    .param p4, "isIgnoreLastUpdateTime"    # Z

    move-object/from16 v7, p0

    .line 47
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getMostDateBean(Z)Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;

    move-result-object v9

    .line 48
    .local v9, "summerBean":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getMostDateBean(Z)Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;

    move-result-object v10

    .line 50
    .local v10, "winterBean":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    const-wide/16 v1, 0x0

    .line 51
    .local v1, "newSummerTime":J
    const-wide/16 v3, 0x0

    .line 52
    .local v3, "newWinterTime":J
    const-wide/16 v5, 0x0

    .line 53
    .local v5, "nextWinterTime":J
    iget-wide v11, v7, Lcom/readboy/provider/semester/bean/SemesterTimeData;->lastYearSummerTime:J

    .line 56
    .local v11, "lastSummerTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 57
    .local v13, "cal":Ljava/util/Calendar;
    move-wide/from16 v14, p1

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 58
    move-wide/from16 v16, v5

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 61
    .local v5, "currentTimeYear":I
    .local v16, "nextWinterTime":J
    const-wide/16 v18, 0x0

    cmp-long v6, v11, v18

    if-nez v6, :cond_0

    if-eqz p3, :cond_0

    .line 62
    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/readboy/provider/semester/util/SemesterUtil;->getDefaultFirstTermTime(I)J

    move-result-wide v11

    .line 66
    :cond_0
    if-nez v10, :cond_1

    if-eqz p3, :cond_1

    .line 67
    invoke-static {v5}, Lcom/readboy/provider/semester/util/SemesterUtil;->getDefaultSecondTermTime(I)J

    move-result-wide v3

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v10}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getRootYear()I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getSolarTimestamp(I)J

    move-result-wide v3

    .line 71
    :goto_0
    if-nez v9, :cond_2

    if-eqz p3, :cond_2

    .line 72
    invoke-static {v5}, Lcom/readboy/provider/semester/util/SemesterUtil;->getDefaultFirstTermTime(I)J

    move-result-wide v1

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v10}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getRootYear()I

    move-result v6

    invoke-virtual {v9, v6}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getSolarTimestamp(I)J

    move-result-wide v1

    .line 79
    :goto_1
    cmp-long v6, v3, v18

    if-lez v6, :cond_3

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 81
    .local v6, "cal1":Ljava/util/Calendar;
    invoke-virtual {v6, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 82
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    .line 83
    .end local v6
    .local v20, "nextWinterYear":I
    goto :goto_2

    .line 84
    .end local v20
    :cond_3
    add-int/lit8 v20, v5, 0x1

    .restart local v20
    :goto_2
    move/from16 v6, v20

    .line 86
    .end local v20
    .local v6, "nextWinterYear":I
    move-object/from16 v21, v9

    invoke-static {v6}, Lcom/readboy/provider/semester/util/SemesterUtil;->getDefaultSecondTermTime(I)J

    move-result-wide v8

    .line 88
    .end local v9
    .end local v16
    .local v8, "nextWinterTime":J
    .local v21, "summerBean":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    const-wide/16 v16, 0x0

    .line 89
    .local v16, "lastInfoUpdateTime":J
    iget-object v0, v7, Lcom/readboy/provider/semester/bean/SemesterTimeData;->semesterUpdateBean:Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, v7, Lcom/readboy/provider/semester/bean/SemesterTimeData;->semesterUpdateBean:Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;

    invoke-virtual {v0}, Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;->getUpdateTime()J

    move-result-wide v16

    .line 93
    .end local v16
    .local v13, "lastInfoUpdateTime":J
    .local v22, "cal":Ljava/util/Calendar;
    :cond_4
    move-object/from16 v22, v13

    move-wide/from16 v13, v16

    const-string v0, "lyh"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .end local v10
    .local v23, "winterBean":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_newSummerTime"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "_newWinterTime="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "_nextWinterTime="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "_lastSummerTime="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "_lastInfoUpdateTime="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "_currentTimeYear="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_nextWinterYear="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    cmp-long v0, v13, v18

    if-ltz v0, :cond_8

    .line 100
    if-eqz p4, :cond_5

    .line 101
    const-wide/16 v13, 0x0

    .line 105
    :cond_5
    move-object v0, v7

    move-wide v15, v1

    move-wide v1, v11

    .end local v1
    .local v15, "newSummerTime":J
    move-wide/from16 v17, v3

    .end local v3
    .local v17, "newWinterTime":J
    move/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v5, p1

    .end local v5
    .end local v6
    .local v19, "currentTimeYear":I
    .restart local v20
    invoke-direct/range {v0 .. v6}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->isInTimeScope(JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    cmp-long v0, v13, v11

    if-gez v0, :cond_6

    .line 107
    sget v0, Lcom/readboy/provider/semester/util/SemesterUtil;->TYPE_AUTO_FIRST_TERM_TIME:I

    return v0

    .line 110
    :cond_6
    move-object v0, v7

    move-wide/from16 v1, v17

    move-wide v3, v15

    move-wide/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->isInTimeScope(JJJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    cmp-long v0, v13, v17

    if-gez v0, :cond_7

    .line 112
    sget v0, Lcom/readboy/provider/semester/util/SemesterUtil;->TYPE_AUTO_SECOND_TERM_TIME:I

    return v0

    .line 115
    :cond_7
    move-object v0, v7

    move-wide v1, v15

    move-wide v3, v8

    move-wide/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->isInTimeScope(JJJ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    cmp-long v0, v13, v15

    if-gez v0, :cond_9

    .line 117
    sget v0, Lcom/readboy/provider/semester/util/SemesterUtil;->TYPE_AUTO_FIRST_TERM_TIME:I

    return v0

    .line 121
    .end local v15
    .end local v17
    .end local v19
    .end local v20
    .restart local v1
    .restart local v3
    .restart local v5
    .restart local v6
    :cond_8
    move-wide v15, v1

    move-wide/from16 v17, v3

    move/from16 v19, v5

    move/from16 v20, v6

    .end local v1
    .end local v3
    .end local v5
    .end local v6
    .restart local v15
    .restart local v17
    .restart local v19
    .restart local v20
    :cond_9
    sget v0, Lcom/readboy/provider/semester/util/SemesterUtil;->TYPE_AUTO_SKIP:I

    return v0
.end method

.method public isSameData(Lcom/readboy/provider/semester/bean/SemesterTimeData;)Z
    .locals 18
    .param p1, "semesterTimeData"    # Lcom/readboy/provider/semester/bean/SemesterTimeData;

    move-object/from16 v0, p0

    .line 303
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getData()Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

    move-result-object v3

    .line 305
    .local v3, "dataBean":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;
    invoke-virtual/range {p1 .. p1}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getData()Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

    move-result-object v4

    .line 306
    .local v4, "checkDataBean":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;
    const/4 v5, 0x1

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 307
    return v5

    .line 308
    :cond_0
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 309
    invoke-virtual {v3}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->getYear()I

    move-result v6

    invoke-virtual {v4}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->getYear()I

    move-result v7

    if-ne v6, v7, :cond_c

    .line 310
    invoke-virtual {v3}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->getDate()Ljava/util/List;

    move-result-object v6

    .line 311
    .local v6, "dateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;>;"
    invoke-virtual {v4}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->getDate()Ljava/util/List;

    move-result-object v7

    .line 312
    .local v7, "checkDateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;>;"
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 313
    return v5

    .line 314
    :cond_1
    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_c

    .line 315
    invoke-virtual {v1, v5}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getMostDateBean(Z)Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;

    move-result-object v8

    .line 316
    .local v8, "checkSummer":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    invoke-virtual {v1, v2}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getMostDateBean(Z)Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;

    move-result-object v9

    .line 317
    .local v9, "checkWinter":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    invoke-virtual {v0, v5}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getMostDateBean(Z)Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;

    move-result-object v10

    .line 318
    .local v10, "summer":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    invoke-virtual {v0, v2}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getMostDateBean(Z)Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;

    move-result-object v11

    .line 319
    .local v11, "winter":Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    if-nez v8, :cond_2

    move v12, v5

    goto :goto_0

    :cond_2
    move v12, v2

    .local v12, "csNull":Z
    :goto_0
    if-nez v9, :cond_3

    move v13, v5

    goto :goto_1

    :cond_3
    move v13, v2

    .local v13, "cwNull":Z
    :goto_1
    if-nez v10, :cond_4

    move v14, v5

    goto :goto_2

    :cond_4
    move v14, v2

    .line 320
    .local v14, "sNull":Z
    :goto_2
    if-nez v11, :cond_5

    move v15, v5

    goto :goto_3

    :cond_5
    move v15, v2

    .line 321
    .local v15, "wNull":Z
    :goto_3
    if-eqz v12, :cond_6

    if-eqz v14, :cond_6

    if-eqz v13, :cond_6

    if-eqz v15, :cond_6

    .line 322
    return v5

    .line 324
    :cond_6
    if-nez v12, :cond_8

    if-nez v14, :cond_8

    if-eqz v13, :cond_8

    if-eqz v15, :cond_8

    .line 325
    invoke-virtual {v8}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getDateType()I

    move-result v5

    invoke-virtual {v10}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getDateType()I

    move-result v2

    if-ne v5, v2, :cond_7

    .line 326
    invoke-virtual {v8}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 325
    const/16 v16, 0x1

    goto :goto_4

    .line 326
    :cond_7
    nop

    .line 325
    const/16 v16, 0x0

    :goto_4
    return v16

    .line 328
    :cond_8
    if-eqz v12, :cond_a

    if-eqz v14, :cond_a

    if-nez v13, :cond_a

    if-nez v15, :cond_a

    .line 329
    invoke-virtual {v9}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getDateType()I

    move-result v2

    invoke-virtual {v11}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getDateType()I

    move-result v5

    if-ne v2, v5, :cond_9

    .line 330
    invoke-virtual {v9}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 329
    const/16 v16, 0x1

    goto :goto_5

    .line 330
    :cond_9
    nop

    .line 329
    const/16 v16, 0x0

    :goto_5
    return v16

    .line 332
    :cond_a
    if-nez v12, :cond_c

    if-nez v14, :cond_c

    if-nez v13, :cond_c

    if-nez v15, :cond_c

    .line 333
    invoke-virtual {v8}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getDateType()I

    move-result v2

    invoke-virtual {v10}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getDateType()I

    move-result v5

    if-ne v2, v5, :cond_b

    .line 334
    invoke-virtual {v8}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 335
    invoke-virtual {v9}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getDateType()I

    move-result v2

    invoke-virtual {v11}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getDateType()I

    move-result v5

    if-ne v2, v5, :cond_b

    .line 336
    invoke-virtual {v9}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 333
    const/16 v16, 0x1

    goto :goto_6

    .line 336
    :cond_b
    nop

    .line 333
    const/16 v16, 0x0

    :goto_6
    return v16

    .line 342
    .end local v3
    .end local v4
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    :cond_c
    const/4 v2, 0x0

    return v2
.end method

.method public setData(Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;)V
    .locals 0
    .param p1, "data"    # Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

    .line 207
    iput-object p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->data:Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;

    .line 208
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->msg:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setOk(I)V
    .locals 0
    .param p1, "ok"    # I

    .line 215
    iput p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->ok:I

    .line 216
    return-void
.end method

.method public setSemesterUpdateBean(Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;)V
    .locals 0
    .param p1, "semesterUpdateBean"    # Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;

    .line 223
    iput-object p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData;->semesterUpdateBean:Lcom/readboy/provider/semester/bean/SemesterUpdateTimeData$SemesterUpdateBean;

    .line 224
    return-void
.end method
