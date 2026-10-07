.class Ljavax/mail/util/SharedFileInputStream$SharedFile;
.super Ljava/lang/Object;
.source "SharedFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/util/SharedFileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedFile"
.end annotation


# instance fields
.field private cnt:I

.field private in:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    .line 121
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    .line 117
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    if-lez v0, :cond_0

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    if-gtz v0, :cond_0

    .line 130
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 131
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 147
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 148
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 149
    return-void
.end method

.method public declared-synchronized forceClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    if-lez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    .line 137
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public open()Ljava/io/RandomAccessFile;
    .locals 1

    .line 124
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    .line 125
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    return-object v0
.end method
