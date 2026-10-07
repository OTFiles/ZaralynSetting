.class public Ljavax/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field private static final serialVersionUID:J = -0x690b2c48c7581fd5L


# instance fields
.field private next:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    iput-object p2, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    return-void
.end method

.method private final superToString()Ljava/lang/String;
    .locals 1

    .line 172
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getNextException()Ljava/lang/Exception;
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized setNextException(Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    monitor-enter p0

    .line 129
    move-object v0, p0

    .line 130
    .local v0, "theEnd":Ljava/lang/Exception;
    :goto_0
    :try_start_0
    instance-of v1, v0, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_1

    .line 131
    move-object v1, v0

    check-cast v1, Ljavax/mail/MessagingException;

    iget-object v1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    if-nez v1, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    move-object v1, v0

    check-cast v1, Ljavax/mail/MessagingException;

    iget-object v1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_1
    :goto_1
    instance-of v1, v0, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_2

    .line 137
    move-object v1, v0

    check-cast v1, Ljavax/mail/MessagingException;

    iput-object p1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    .line 138
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 140
    :cond_2
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 128
    .end local v0
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    .line 150
    .local v1, "n":Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 151
    monitor-exit p0

    return-object v0

    .line 152
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_1
    if-nez v1, :cond_2

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 154
    :cond_2
    :try_start_2
    const-string v3, ";\n  nested exception is:\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    instance-of v3, v1, Ljavax/mail/MessagingException;

    if-eqz v3, :cond_3

    .line 156
    move-object v3, v1

    check-cast v3, Ljavax/mail/MessagingException;

    .line 157
    .local v3, "mex":Ljavax/mail/MessagingException;
    invoke-direct {v3}, Ljavax/mail/MessagingException;->superToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    iget-object v4, v3, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    move-object v1, v4

    goto :goto_1

    .line 160
    .end local v3
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    goto :goto_1

    .line 147
    .end local v0
    .end local v1
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method
