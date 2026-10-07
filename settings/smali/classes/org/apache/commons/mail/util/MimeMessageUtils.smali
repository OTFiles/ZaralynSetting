.class public final Lorg/apache/commons/mail/util/MimeMessageUtils;
.super Ljava/lang/Object;
.source "MimeMessageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static createMimeMessage(Ljavax/mail/Session;Ljava/io/File;)Ljavax/mail/internet/MimeMessage;
    .locals 2
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .line 88
    .local v0, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 89
    invoke-static {p0, v0}, Lorg/apache/commons/mail/util/MimeMessageUtils;->createMimeMessage(Ljavax/mail/Session;Ljava/io/InputStream;)Ljavax/mail/internet/MimeMessage;

    move-result-object v1

    .line 93
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 95
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 89
    return-object v1

    .line 93
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw v1
.end method

.method public static createMimeMessage(Ljavax/mail/Session;Ljava/io/InputStream;)Ljavax/mail/internet/MimeMessage;
    .locals 1
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static createMimeMessage(Ljavax/mail/Session;Ljava/lang/String;)Ljavax/mail/internet/MimeMessage;
    .locals 3
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    .line 130
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 131
    .local v1, "byteSource":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    .line 132
    invoke-static {p0, v0}, Lorg/apache/commons/mail/util/MimeMessageUtils;->createMimeMessage(Ljavax/mail/Session;Ljava/io/InputStream;)Ljavax/mail/internet/MimeMessage;

    move-result-object v2

    .line 136
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 138
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 132
    return-object v2

    .line 136
    .end local v1
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_0
    throw v1
.end method

.method public static createMimeMessage(Ljavax/mail/Session;[B)Ljavax/mail/internet/MimeMessage;
    .locals 2
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    .line 60
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 61
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, p0, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    .line 65
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 61
    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_0
    throw v1
.end method

.method public static writeMimeMessage(Ljavax/mail/internet/MimeMessage;Ljava/io/File;)V
    .locals 4
    .param p0, "mimeMessage"    # Ljavax/mail/internet/MimeMessage;
    .param p1, "resultFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    .line 159
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create the following parent directories: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 167
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 169
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 170
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 174
    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 179
    :cond_2
    return-void

    .line 174
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v1
.end method
