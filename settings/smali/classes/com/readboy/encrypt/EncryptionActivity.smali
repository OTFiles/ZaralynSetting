.class public Lcom/readboy/encrypt/EncryptionActivity;
.super Landroid/app/Activity;
.source "EncryptionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public jiamiTest()V
    .locals 3

    .line 53
    const/4 v0, 0x0

    .line 57
    .local v0, "ew":Lcom/readboy/encrypt/EncryptWriter;
    :try_start_0
    new-instance v1, Lcom/readboy/encrypt/EncryptWriter;

    const-string v2, "mnt/sdcard/test.txt"

    invoke-direct {v1, v2}, Lcom/readboy/encrypt/EncryptWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 60
    const-string v1, "username=arty\n"

    invoke-virtual {v0, v1}, Lcom/readboy/encrypt/EncryptWriter;->write(Ljava/lang/String;)V

    .line 61
    const-string v1, "realname=\u963f\u5f1f\n"

    invoke-virtual {v0, v1}, Lcom/readboy/encrypt/EncryptWriter;->write(Ljava/lang/String;)V

    .line 62
    const-string v1, "province=11\n"

    invoke-virtual {v0, v1}, Lcom/readboy/encrypt/EncryptWriter;->write(Ljava/lang/String;)V

    .line 63
    const-string v1, "city=1101\n"

    invoke-virtual {v0, v1}, Lcom/readboy/encrypt/EncryptWriter;->write(Ljava/lang/String;)V

    .line 64
    const-string v1, "district=110101\n"

    invoke-virtual {v0, v1}, Lcom/readboy/encrypt/EncryptWriter;->write(Ljava/lang/String;)V

    .line 65
    const-string v1, "subject_1=0\n"

    invoke-virtual {v0, v1}, Lcom/readboy/encrypt/EncryptWriter;->write(Ljava/lang/String;)V

    .line 66
    const-string v1, "subject_2=1\n"

    invoke-virtual {v0, v1}, Lcom/readboy/encrypt/EncryptWriter;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/readboy/encrypt/EncryptWriter;->flush()V

    .line 72
    invoke-virtual {v0}, Lcom/readboy/encrypt/EncryptWriter;->close()V

    .line 76
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    .end local v1
    :goto_0
    return-void
.end method

.method public jiemiTest()V
    .locals 5

    .line 23
    :try_start_0
    new-instance v0, Lcom/readboy/encrypt/EncryptReader;

    const-string v1, "mnt/sdcard/test.txt"

    invoke-direct {v0, v1}, Lcom/readboy/encrypt/EncryptReader;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "eis":Lcom/readboy/encrypt/EncryptReader;
    invoke-virtual {v0}, Lcom/readboy/encrypt/EncryptReader;->available()I

    move-result v1

    .line 27
    .local v1, "av":I
    if-lez v1, :cond_0

    .line 29
    new-array v2, v1, [B

    .line 32
    .local v2, "buff":[B
    invoke-virtual {v0, v2}, Lcom/readboy/encrypt/EncryptReader;->read([B)I

    .line 35
    new-instance v3, Ljava/lang/String;

    const-string v4, "gbk"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 37
    .local v3, "s":Ljava/lang/String;
    const-string v4, "encryption"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v2
    .end local v3
    :cond_0
    invoke-virtual {v0}, Lcom/readboy/encrypt/EncryptReader;->close()V

    .line 46
    .end local v0
    .end local v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    .end local v0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/readboy/encrypt/EncryptionActivity;->jiamiTest()V

    .line 16
    invoke-virtual {p0}, Lcom/readboy/encrypt/EncryptionActivity;->jiemiTest()V

    .line 17
    return-void
.end method
