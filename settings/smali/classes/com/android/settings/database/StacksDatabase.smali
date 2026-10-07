.class public Lcom/android/settings/database/StacksDatabase;
.super Ljava/lang/Object;
.source "StacksDatabase.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbFile:Ljava/lang/String;

.field private mPlanCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/android/settings/database/StacksDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private close()V
    .locals 1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 147
    :catch_2
    move-exception v0

    .line 148
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 153
    .end local v0
    :cond_0
    :goto_0
    nop

    .line 154
    :goto_1
    return-void
.end method

.method private dropTable(Ljava/lang/String;)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;

    .line 126
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "sql":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .end local v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 131
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 129
    :catch_2
    move-exception v0

    .line 130
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 135
    .end local v0
    :goto_0
    nop

    .line 136
    :goto_1
    return-void
.end method

.method private insertLauStatusInfo(Lcom/android/settings/database/LauncherStatus;)Z
    .locals 7
    .param p1, "lauStatus"    # Lcom/android/settings/database/LauncherStatus;

    .line 593
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/database/LauncherStatus;->sqliteStandard(Z)V

    .line 594
    const/4 v0, 0x1

    .line 596
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 599
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO LauStatus (uid, laus_pkg, laus_class, laus_more, laus_extra, laus_extime, laus_req_status, laus_now_status, cid, pid) VALUES ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_more:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_extra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_extime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_now_status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->cid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "sql":Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 614
    :catch_0
    move-exception v3

    .line 615
    .local v3, "e":Landroid/database/SQLException;
    const/4 v0, 0x0

    .line 617
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from LauStatus where laus_pkg = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/settings/database/LauncherStatus;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "sqlx":Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 622
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 620
    :catch_1
    move-exception v5

    .line 621
    .local v5, "ex":Landroid/database/SQLException;
    :try_start_4
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V

    .line 623
    .end local v5
    :goto_0
    sget-object v5, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v3
    .end local v4
    :goto_1
    if-eqz v0, :cond_0

    .line 627
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .end local v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 634
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 629
    :catch_2
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 631
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=====divhee============insertLauStatusInfo======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 636
    invoke-virtual {p1, v1}, Lcom/android/settings/database/LauncherStatus;->sqliteStandard(Z)V

    .line 637
    nop

    .line 639
    return v0

    .line 634
    :goto_3
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 636
    invoke-virtual {p1, v1}, Lcom/android/settings/database/LauncherStatus;->sqliteStandard(Z)V

    throw v2
.end method

.method public static insertMsgCS(Lcom/android/settings/database/MessageCenter;)Z
    .locals 2
    .param p0, "msgcs"    # Lcom/android/settings/database/MessageCenter;

    .line 794
    new-instance v0, Lcom/android/settings/database/StacksDatabase;

    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;-><init>()V

    .line 795
    .local v0, "service":Lcom/android/settings/database/StacksDatabase;
    invoke-virtual {v0}, Lcom/android/settings/database/StacksDatabase;->init()Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 797
    const/4 v1, 0x0

    return v1

    .line 799
    :cond_0
    invoke-direct {v0, p0}, Lcom/android/settings/database/StacksDatabase;->insertMsgCSInfo(Lcom/android/settings/database/MessageCenter;)Z

    move-result v1

    .line 800
    .local v1, "insertMsgCS":Z
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 801
    return v1
.end method

.method private insertMsgCSInfo(Lcom/android/settings/database/MessageCenter;)Z
    .locals 7
    .param p1, "msgcs"    # Lcom/android/settings/database/MessageCenter;

    .line 1122
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/database/MessageCenter;->sqliteStandard(Z)V

    .line 1123
    const/4 v0, 0x1

    .line 1125
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1128
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO MsgCenter (msgc_vid, uid, msgc_title, msgc_face, msgc_content, msgc_time, pid, cid, msgc_full) VALUES (\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/MessageCenter;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_face:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/MessageCenter;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/MessageCenter;->cid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_full:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1141
    .local v2, "sql":Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1152
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1142
    :catch_0
    move-exception v3

    .line 1143
    .local v3, "e":Landroid/database/SQLException;
    const/4 v0, 0x0

    .line 1145
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from MsgCenter where msgc_vid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/settings/database/MessageCenter;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1147
    .local v4, "sqlx":Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1150
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1148
    :catch_1
    move-exception v5

    .line 1149
    .local v5, "ex":Landroid/database/SQLException;
    :try_start_4
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V

    .line 1151
    .end local v5
    :goto_0
    sget-object v5, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    .end local v3
    .end local v4
    :goto_1
    if-eqz v0, :cond_0

    .line 1155
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .end local v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1161
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1157
    :catch_2
    move-exception v2

    .line 1158
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1161
    .end local v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1163
    invoke-virtual {p1, v1}, Lcom/android/settings/database/MessageCenter;->sqliteStandard(Z)V

    .line 1164
    nop

    .line 1166
    return v0

    .line 1161
    :goto_3
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1163
    invoke-virtual {p1, v1}, Lcom/android/settings/database/MessageCenter;->sqliteStandard(Z)V

    throw v2
.end method

.method private openAndCheck()Z
    .locals 6

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 67
    iput-object v1, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDbFile:Ljava/lang/String;

    const v3, 0x10000010

    invoke-static {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    iget-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 73
    const-string v2, "LauStatus"

    invoke-direct {p0, v2}, Lcom/android/settings/database/StacksDatabase;->dropTable(Ljava/lang/String;)V

    .line 74
    const-string v2, "MsgCenter"

    invoke-direct {p0, v2}, Lcom/android/settings/database/StacksDatabase;->dropTable(Ljava/lang/String;)V

    .line 80
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    nop

    .line 84
    :try_start_1
    const-string v2, "CREATE TABLE if not exists  LauStatus (uid integer, laus_pkg varchar(128), laus_class varchar(1024), laus_more varchar(1024), laus_extra varchar(1024),laus_extime varchar(128), laus_req_status integer, laus_now_status integer, cid integer, pid integer, PRIMARY KEY(uid, laus_pkg))"

    .line 97
    .local v2, "sql1":Ljava/lang/String;
    const-string v4, "CREATE TABLE if not exists  MsgCenter (msgc_vid varchar(255),uid integer,msgc_title varchar(255), msgc_face varchar(255), msgc_content varchar(255), msgc_time varchar(255), pid integer,cid integer,msgc_full integer,PRIMARY KEY(msgc_vid,uid))"

    .line 108
    .local v4, "sql2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    iget-object v5, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    iget-object v5, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 115
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    .line 114
    nop

    .line 116
    const/4 v0, 0x1

    return v0

    .line 111
    .end local v2
    .end local v4
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 113
    iput-object v1, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    return v0

    .line 76
    .end local v2
    :catch_1
    move-exception v2

    .line 77
    .restart local v2
    sget-object v3, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    const-string v4, "openAndCheck: create or open db fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object v1, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    return v0
.end method

.method public static queryAllLauStatus(II)[Lcom/android/settings/database/LauncherStatus;
    .locals 2
    .param p0, "pid"    # I
    .param p1, "uid"    # I

    .line 359
    new-instance v0, Lcom/android/settings/database/StacksDatabase;

    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;-><init>()V

    .line 360
    .local v0, "service":Lcom/android/settings/database/StacksDatabase;
    invoke-virtual {v0}, Lcom/android/settings/database/StacksDatabase;->init()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 362
    const/4 v1, 0x0

    return-object v1

    .line 365
    :cond_0
    invoke-direct {v0, p0, p1}, Lcom/android/settings/database/StacksDatabase;->queryAllLauStatusInfo(II)[Lcom/android/settings/database/LauncherStatus;

    move-result-object v1

    .line 366
    .local v1, "lauStatus":[Lcom/android/settings/database/LauncherStatus;
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 367
    return-object v1
.end method

.method private queryAllLauStatusInfo(II)[Lcom/android/settings/database/LauncherStatus;
    .locals 19
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    move-object/from16 v1, p0

    .line 508
    const/4 v2, 0x0

    .line 510
    .local v2, "lauStatus":[Lcom/android/settings/database/LauncherStatus;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM LauStatus where pid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and uid = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 512
    .local v5, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 513
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_0

    .line 514
    return-object v6

    .line 523
    :cond_0
    nop

    .line 524
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 531
    :cond_1
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Lcom/android/settings/database/LauncherStatus;

    .line 533
    :try_start_1
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v7, "uid"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 534
    .local v0, "column_uid":I
    iget-object v7, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v8, "laus_pkg"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 535
    .local v7, "column_laus_pkg":I
    iget-object v8, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v9, "laus_class"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 536
    .local v8, "column_laus_class":I
    iget-object v9, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v10, "laus_more"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 537
    .local v9, "column_laus_more":I
    iget-object v10, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v11, "laus_extra"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 538
    .local v10, "column_laus_extra":I
    iget-object v11, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v12, "laus_extime"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 539
    .local v11, "column_laus_extime":I
    iget-object v12, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v13, "laus_req_status"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 540
    .local v12, "column_laus_req_status":I
    iget-object v13, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v14, "laus_now_status"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 541
    .local v13, "column_laus_now_status":I
    iget-object v14, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v15, "cid"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 542
    .local v14, "column_cid":I
    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v6, "pid"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 543
    .local v6, "column_pid":I
    const/16 v16, 0x0

    .local v16, "inum":I
    :goto_0
    move/from16 v17, v16

    .end local v16
    .local v17, "inum":I
    array-length v15, v2

    move/from16 v3, v17

    if-ge v3, v15, :cond_3

    .line 544
    .end local v17
    .local v3, "inum":I
    new-instance v15, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v15}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    aput-object v15, v2, v3

    .line 545
    aget-object v15, v2, v3

    iget-object v4, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v15, Lcom/android/settings/database/LauncherStatus;->uid:I

    .line 546
    aget-object v4, v2, v3

    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    .line 547
    aget-object v4, v2, v3

    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    .line 548
    aget-object v4, v2, v3

    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/android/settings/database/LauncherStatus;->laus_more:Ljava/lang/String;

    .line 549
    aget-object v4, v2, v3

    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/android/settings/database/LauncherStatus;->laus_extra:Ljava/lang/String;

    .line 550
    aget-object v4, v2, v3

    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/android/settings/database/LauncherStatus;->laus_extime:Ljava/lang/String;

    .line 551
    aget-object v4, v2, v3

    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v4, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    .line 552
    aget-object v4, v2, v3

    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v4, Lcom/android/settings/database/LauncherStatus;->laus_now_status:I

    .line 553
    aget-object v4, v2, v3

    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v4, Lcom/android/settings/database/LauncherStatus;->cid:I

    .line 554
    aget-object v4, v2, v3

    iget-object v15, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v4, Lcom/android/settings/database/LauncherStatus;->pid:I

    .line 556
    aget-object v4, v2, v3

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lcom/android/settings/database/LauncherStatus;->sqliteStandard(Z)V

    .line 557
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    iget-object v4, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 558
    const/4 v2, 0x0

    .line 559
    goto :goto_1

    .line 543
    :cond_2
    add-int/lit8 v16, v3, 0x1

    .end local v3
    .restart local v16
    move/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_0

    .line 572
    .end local v0
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v16
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 570
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 572
    .end local v0
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 573
    :goto_2
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 574
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 577
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 562
    :catch_1
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    sget-object v3, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v3, "LauStatus"

    invoke-direct {v1, v3}, Lcom/android/settings/database/StacksDatabase;->dropTable(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/database/StacksDatabase;->init()Z

    .line 566
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    .line 572
    .end local v0
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 573
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 574
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 577
    :goto_3
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 578
    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 579
    iput-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 582
    :cond_5
    return-object v2

    .line 572
    :goto_4
    iget-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_6

    .line 573
    iget-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 574
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    :cond_6
    throw v0

    .line 525
    :cond_7
    :goto_5
    move-object v3, v6

    iget-object v0, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 526
    iput-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 527
    return-object v3

    .line 516
    :catch_2
    move-exception v0

    .line 517
    .local v0, "e1":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_8

    .line 518
    iget-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 519
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    goto :goto_6

    .line 521
    :cond_8
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    return-object v3
.end method

.method public static queryLauStatus(Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;
    .locals 2
    .param p0, "laus_pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 342
    new-instance v0, Lcom/android/settings/database/StacksDatabase;

    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;-><init>()V

    .line 343
    .local v0, "service":Lcom/android/settings/database/StacksDatabase;
    invoke-virtual {v0}, Lcom/android/settings/database/StacksDatabase;->init()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 345
    const/4 v1, 0x0

    return-object v1

    .line 348
    :cond_0
    invoke-direct {v0, p0, p1}, Lcom/android/settings/database/StacksDatabase;->queryLauStatusInfo(Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v1

    .line 349
    .local v1, "lauStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 350
    return-object v1
.end method

.method private queryLauStatusInfo(Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;
    .locals 6
    .param p1, "laus_pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 444
    const/4 v0, 0x0

    .line 446
    .local v0, "lauStatus":Lcom/android/settings/database/LauncherStatus;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM LauStatus where laus_pkg = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/settings/database/LauncherStatus;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' and uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 449
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_0

    .line 450
    return-object v2

    .line 459
    :cond_0
    nop

    .line 460
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 465
    :cond_1
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    move-object v0, v3

    .line 467
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "uid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/database/LauncherStatus;->uid:I

    .line 468
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "laus_pkg"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    .line 469
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "laus_class"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    .line 470
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "laus_more"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/LauncherStatus;->laus_more:Ljava/lang/String;

    .line 471
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "laus_extra"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/LauncherStatus;->laus_extra:Ljava/lang/String;

    .line 472
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "laus_extime"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/LauncherStatus;->laus_extime:Ljava/lang/String;

    .line 473
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "laus_req_status"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    .line 474
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "laus_now_status"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/database/LauncherStatus;->laus_now_status:I

    .line 475
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "cid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/database/LauncherStatus;->cid:I

    .line 476
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "pid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/database/LauncherStatus;->pid:I

    .line 478
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/database/LauncherStatus;->sqliteStandard(Z)V

    .line 489
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    .line 490
    :goto_0
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 491
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 489
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 484
    :catch_0
    move-exception v3

    .line 485
    .local v3, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v4, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V

    .line 487
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 489
    .end local v3
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 479
    :catch_1
    move-exception v3

    .line 480
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    sget-object v4, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v4, "LauStatus"

    invoke-direct {p0, v4}, Lcom/android/settings/database/StacksDatabase;->dropTable(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/database/StacksDatabase;->init()Z

    .line 483
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    .line 489
    .end local v3
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 494
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 495
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 496
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 499
    :cond_3
    return-object v0

    .line 489
    :goto_2
    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_4

    .line 490
    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 491
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    :cond_4
    throw v3

    .line 461
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 462
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 463
    return-object v2

    .line 452
    :catch_2
    move-exception v3

    .line 453
    .local v3, "e1":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_6

    .line 454
    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 455
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 457
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    return-object v2
.end method

.method public static queryMsgCS(Ljava/lang/String;I)Lcom/android/settings/database/MessageCenter;
    .locals 2
    .param p0, "msgc_vid"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 876
    new-instance v0, Lcom/android/settings/database/StacksDatabase;

    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;-><init>()V

    .line 877
    .local v0, "service":Lcom/android/settings/database/StacksDatabase;
    invoke-virtual {v0}, Lcom/android/settings/database/StacksDatabase;->init()Z

    move-result v1

    if-nez v1, :cond_0

    .line 878
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 879
    const/4 v1, 0x0

    return-object v1

    .line 882
    :cond_0
    invoke-direct {v0, p0, p1}, Lcom/android/settings/database/StacksDatabase;->queryMsgCSInfo(Ljava/lang/String;I)Lcom/android/settings/database/MessageCenter;

    move-result-object v1

    .line 883
    .local v1, "msgcs":Lcom/android/settings/database/MessageCenter;
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 884
    return-object v1
.end method

.method private queryMsgCSInfo(Ljava/lang/String;I)Lcom/android/settings/database/MessageCenter;
    .locals 6
    .param p1, "msgc_vid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, "msgcs":Lcom/android/settings/database/MessageCenter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM MsgCenter where msgc_vid = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' and uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 982
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_0

    .line 983
    return-object v2

    .line 992
    :cond_0
    nop

    .line 993
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 998
    :cond_1
    new-instance v3, Lcom/android/settings/database/MessageCenter;

    invoke-direct {v3}, Lcom/android/settings/database/MessageCenter;-><init>()V

    move-object v0, v3

    .line 1000
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "msgc_vid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    .line 1001
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "uid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/database/MessageCenter;->uid:I

    .line 1002
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "msgc_title"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/MessageCenter;->msgc_title:Ljava/lang/String;

    .line 1003
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "msgc_face"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/MessageCenter;->msgc_face:Ljava/lang/String;

    .line 1004
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "msgc_content"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    .line 1005
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "msgc_time"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/database/MessageCenter;->msgc_time:Ljava/lang/String;

    .line 1006
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "cid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/database/MessageCenter;->cid:I

    .line 1007
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "pid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/database/MessageCenter;->pid:I

    .line 1008
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    const-string v5, "msgc_full"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/database/MessageCenter;->msgc_full:I

    .line 1010
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/database/MessageCenter;->sqliteStandard(Z)V

    .line 1021
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    .line 1022
    :goto_0
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1023
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 1021
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1016
    :catch_0
    move-exception v3

    .line 1017
    .local v3, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v4, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V

    .line 1019
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 1021
    .end local v3
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1011
    :catch_1
    move-exception v3

    .line 1012
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    sget-object v4, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const-string v4, "MsgCenter"

    invoke-direct {p0, v4}, Lcom/android/settings/database/StacksDatabase;->dropTable(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lcom/android/settings/database/StacksDatabase;->init()Z

    .line 1015
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    .line 1021
    .end local v3
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1026
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 1027
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1028
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 1031
    :cond_3
    return-object v0

    .line 1021
    :goto_2
    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_4

    .line 1022
    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1023
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    :cond_4
    throw v3

    .line 994
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 995
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 996
    return-object v2

    .line 985
    :catch_2
    move-exception v3

    .line 986
    .local v3, "e1":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_6

    .line 987
    iget-object v4, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 988
    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mPlanCursor:Landroid/database/Cursor;

    .line 990
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 991
    return-object v2
.end method

.method public static saveLauStatusNew(Lcom/android/settings/database/LauncherStatus;)Z
    .locals 5
    .param p0, "laustatus"    # Lcom/android/settings/database/LauncherStatus;

    .line 179
    const-class v0, Lcom/android/settings/database/LauncherStatus;

    monitor-enter v0

    .line 180
    :try_start_0
    new-instance v1, Lcom/android/settings/database/StacksDatabase;

    invoke-direct {v1}, Lcom/android/settings/database/StacksDatabase;-><init>()V

    .line 181
    .local v1, "service":Lcom/android/settings/database/StacksDatabase;
    invoke-virtual {v1}, Lcom/android/settings/database/StacksDatabase;->init()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-direct {v1}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 183
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 185
    :cond_0
    const/4 v2, 0x0

    .line 186
    .local v2, "insertLauStatus":Z
    iget-object v3, p0, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/database/LauncherStatus;->uid:I

    invoke-direct {v1, v3, v4}, Lcom/android/settings/database/StacksDatabase;->queryLauStatusInfo(Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 187
    .local v3, "savedlauStatus":Lcom/android/settings/database/LauncherStatus;
    if-nez v3, :cond_1

    .line 188
    invoke-direct {v1, p0}, Lcom/android/settings/database/StacksDatabase;->insertLauStatusInfo(Lcom/android/settings/database/LauncherStatus;)Z

    move-result v4

    move v2, v4

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {v1, p0}, Lcom/android/settings/database/StacksDatabase;->updateLauStatusInfo(Lcom/android/settings/database/LauncherStatus;)Z

    move-result v4

    move v2, v4

    .line 192
    :goto_0
    invoke-direct {v1}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 193
    monitor-exit v0

    return v2

    .line 194
    .end local v1
    .end local v2
    .end local v3
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static saveLauStatusNowStatus(Lcom/android/settings/database/LauncherStatus;)Z
    .locals 6
    .param p0, "laustatus"    # Lcom/android/settings/database/LauncherStatus;

    .line 228
    const-class v0, Lcom/android/settings/database/LauncherStatus;

    monitor-enter v0

    .line 229
    :try_start_0
    new-instance v1, Lcom/android/settings/database/StacksDatabase;

    invoke-direct {v1}, Lcom/android/settings/database/StacksDatabase;-><init>()V

    .line 230
    .local v1, "service":Lcom/android/settings/database/StacksDatabase;
    invoke-virtual {v1}, Lcom/android/settings/database/StacksDatabase;->init()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-direct {v1}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 232
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 234
    :cond_0
    const/4 v2, 0x0

    .line 235
    .local v2, "insertLauStatus":Z
    iget-object v3, p0, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/database/LauncherStatus;->uid:I

    invoke-direct {v1, v3, v4}, Lcom/android/settings/database/StacksDatabase;->queryLauStatusInfo(Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 236
    .local v3, "savedlauStatus":Lcom/android/settings/database/LauncherStatus;
    if-nez v3, :cond_1

    .line 237
    invoke-direct {v1, p0}, Lcom/android/settings/database/StacksDatabase;->insertLauStatusInfo(Lcom/android/settings/database/LauncherStatus;)Z

    move-result v4

    move v2, v4

    goto :goto_1

    .line 239
    :cond_1
    iget v4, p0, Lcom/android/settings/database/LauncherStatus;->laus_now_status:I

    iput v4, v3, Lcom/android/settings/database/LauncherStatus;->laus_now_status:I

    .line 240
    iget-object v4, p0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 241
    iget-object v4, v3, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    iget-object v4, p0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    goto :goto_0

    .line 243
    :cond_2
    iget-object v4, v3, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    .line 247
    :cond_3
    :goto_0
    invoke-direct {v1, v3}, Lcom/android/settings/database/StacksDatabase;->updateLauStatusInfo(Lcom/android/settings/database/LauncherStatus;)Z

    move-result v4

    move v2, v4

    .line 249
    :goto_1
    invoke-direct {v1}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 250
    monitor-exit v0

    return v2

    .line 251
    .end local v1
    .end local v2
    .end local v3
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static saveLauStatusOnlyReqStatus(Lcom/android/settings/database/LauncherStatus;)Z
    .locals 5
    .param p0, "laustatus"    # Lcom/android/settings/database/LauncherStatus;

    .line 203
    const-class v0, Lcom/android/settings/database/LauncherStatus;

    monitor-enter v0

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "insertLauStatus":Z
    :try_start_0
    new-instance v2, Lcom/android/settings/database/StacksDatabase;

    invoke-direct {v2}, Lcom/android/settings/database/StacksDatabase;-><init>()V

    .line 206
    .local v2, "service":Lcom/android/settings/database/StacksDatabase;
    invoke-virtual {v2}, Lcom/android/settings/database/StacksDatabase;->init()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    invoke-direct {v2}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 208
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/database/LauncherStatus;->uid:I

    invoke-direct {v2, v3, v4}, Lcom/android/settings/database/StacksDatabase;->queryLauStatusInfo(Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 211
    .local v3, "savedlauStatus":Lcom/android/settings/database/LauncherStatus;
    if-nez v3, :cond_1

    .line 212
    invoke-direct {v2, p0}, Lcom/android/settings/database/StacksDatabase;->insertLauStatusInfo(Lcom/android/settings/database/LauncherStatus;)Z

    move-result v4

    move v1, v4

    goto :goto_0

    .line 214
    :cond_1
    iget v4, p0, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    iput v4, v3, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    .line 215
    invoke-direct {v2, v3}, Lcom/android/settings/database/StacksDatabase;->updateLauStatusInfo(Lcom/android/settings/database/LauncherStatus;)Z

    move-result v4

    move v1, v4

    .line 217
    :goto_0
    invoke-direct {v2}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 218
    monitor-exit v0

    return v1

    .line 219
    .end local v1
    .end local v2
    .end local v3
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLauStatusInfo(Lcom/android/settings/database/LauncherStatus;)Z
    .locals 4
    .param p1, "lauStatus"    # Lcom/android/settings/database/LauncherStatus;

    .line 713
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/database/LauncherStatus;->sqliteStandard(Z)V

    .line 714
    const/4 v0, 0x1

    .line 716
    .local v0, "bSuccess":Z
    iget-object v1, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 719
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update LauStatus set laus_class = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', laus_more = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_more:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', laus_extra = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_extra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', laus_extime = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_extime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', laus_req_status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", laus_now_status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_now_status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->cid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Where laus_pkg = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' and uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/LauncherStatus;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "sql":Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 733
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v3

    .line 731
    .local v3, "e":Landroid/database/SQLException;
    :try_start_2
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V

    .line 732
    const/4 v0, 0x0

    .line 734
    .end local v3
    :goto_0
    if-eqz v0, :cond_0

    .line 736
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .end local v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 742
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 738
    :catch_1
    move-exception v2

    .line 739
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 742
    .end local v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 744
    invoke-virtual {p1, v1}, Lcom/android/settings/database/LauncherStatus;->sqliteStandard(Z)V

    .line 745
    nop

    .line 747
    return v0

    .line 742
    :goto_2
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 744
    invoke-virtual {p1, v1}, Lcom/android/settings/database/LauncherStatus;->sqliteStandard(Z)V

    throw v2
.end method

.method public static updateMsgCS(Lcom/android/settings/database/MessageCenter;)Z
    .locals 2
    .param p0, "msgcs"    # Lcom/android/settings/database/MessageCenter;

    .line 826
    new-instance v0, Lcom/android/settings/database/StacksDatabase;

    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;-><init>()V

    .line 827
    .local v0, "service":Lcom/android/settings/database/StacksDatabase;
    invoke-virtual {v0}, Lcom/android/settings/database/StacksDatabase;->init()Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 829
    const/4 v1, 0x0

    return v1

    .line 831
    :cond_0
    invoke-direct {v0, p0}, Lcom/android/settings/database/StacksDatabase;->updateMsgCSInfo(Lcom/android/settings/database/MessageCenter;)Z

    move-result v1

    .line 832
    .local v1, "updateMsgCS":Z
    invoke-direct {v0}, Lcom/android/settings/database/StacksDatabase;->close()V

    .line 833
    return v1
.end method

.method private updateMsgCSInfo(Lcom/android/settings/database/MessageCenter;)Z
    .locals 4
    .param p1, "msgcs"    # Lcom/android/settings/database/MessageCenter;

    .line 1240
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/database/MessageCenter;->sqliteStandard(Z)V

    .line 1241
    const/4 v0, 0x1

    .line 1243
    .local v0, "bSuccess":Z
    iget-object v1, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1246
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update MsgCenter set msgc_title = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', msgc_face = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_face:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', msgc_content = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', msgc_time = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/MessageCenter;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/MessageCenter;->cid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msgc_full = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_full:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Where msgc_vid = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/database/MessageCenter;->msgc_vid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' and uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/database/MessageCenter;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1255
    .local v2, "sql":Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1259
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1256
    :catch_0
    move-exception v3

    .line 1257
    .local v3, "e":Landroid/database/SQLException;
    :try_start_2
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V

    .line 1258
    const/4 v0, 0x0

    .line 1260
    .end local v3
    :goto_0
    if-eqz v0, :cond_0

    .line 1262
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .end local v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1268
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1264
    :catch_1
    move-exception v2

    .line 1265
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1268
    .end local v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1270
    invoke-virtual {p1, v1}, Lcom/android/settings/database/MessageCenter;->sqliteStandard(Z)V

    .line 1271
    nop

    .line 1273
    return v0

    .line 1268
    :goto_2
    iget-object v3, p0, Lcom/android/settings/database/StacksDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1270
    invoke-virtual {p1, v1}, Lcom/android/settings/database/MessageCenter;->sqliteStandard(Z)V

    throw v2
.end method


# virtual methods
.method public init()Z
    .locals 4

    .line 38
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getDatabaseDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "readboy/settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "readboy/settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    sget-object v2, Lcom/android/settings/database/StacksDatabase;->TAG:Ljava/lang/String;

    const-string v3, "init: create folder fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v2, 0x0

    return v2

    .line 53
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "rbysettings.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/database/StacksDatabase;->mDbFile:Ljava/lang/String;

    .line 54
    .end local v0
    .end local v1
    goto :goto_1

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getDatabaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rbysettings.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/StacksDatabase;->mDbFile:Ljava/lang/String;

    .line 57
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/database/StacksDatabase;->openAndCheck()Z

    move-result v0

    return v0
.end method
