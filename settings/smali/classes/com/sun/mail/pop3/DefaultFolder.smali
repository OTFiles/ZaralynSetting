.class public Lcom/sun/mail/pop3/DefaultFolder;
.super Ljavax/mail/Folder;
.source "DefaultFolder.java"


# direct methods
.method constructor <init>(Lcom/sun/mail/pop3/POP3Store;)V
    .locals 0
    .param p1, "store"    # Lcom/sun/mail/pop3/POP3Store;

    .line 54
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 55
    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .locals 2
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Append not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Z)V
    .locals 2
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "close"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Z)Z
    .locals 2
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "delete"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "expunge"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 95
    const-string v0, "INBOX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/sun/mail/pop3/DefaultFolder;->getInbox()Ljavax/mail/Folder;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "only INBOX supported"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, ""

    return-object v0
.end method

.method protected getInbox()Ljavax/mail/Folder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/sun/mail/pop3/DefaultFolder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljavax/mail/Store;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(I)Ljavax/mail/Message;
    .locals 2
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "getMessage"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, ""

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .locals 1

    .line 128
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    return-object v0
.end method

.method public getSeparator()C
    .locals 1

    .line 79
    const/16 v0, 0x2f    # '/'

    return v0
.end method

.method public getType()I
    .locals 1

    .line 83
    const/4 v0, 0x2

    return v0
.end method

.method public hasNewMessages()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/mail/Folder;

    invoke-virtual {p0}, Lcom/sun/mail/pop3/DefaultFolder;->getInbox()Ljavax/mail/Folder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    .local v0, "f":[Ljavax/mail/Folder;
    return-object v0
.end method

.method public open(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "open"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "renameTo"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
