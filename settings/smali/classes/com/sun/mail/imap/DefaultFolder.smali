.class public Lcom/sun/mail/imap/DefaultFolder;
.super Lcom/sun/mail/imap/IMAPFolder;
.source "DefaultFolder.java"


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/IMAPStore;)V
    .locals 2
    .param p1, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .line 59
    const-string v0, ""

    const v1, 0xffff

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/DefaultFolder;->exists:Z

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/DefaultFolder;->type:I

    .line 62
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

    .line 130
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot append to Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Z)Z
    .locals 2
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot delete Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot expunge Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    const v2, 0xffff

    invoke-direct {v0, p1, v2, v1}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sun/mail/imap/DefaultFolder;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .locals 1

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNewMessages()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 73
    nop

    .line 75
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder$1;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$1;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 81
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-nez v0, :cond_0

    .line 82
    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/mail/Folder;

    return-object v1

    .line 84
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPFolder;

    .line 85
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 87
    .end local v2
    return-object v1

    .line 86
    .restart local v2
    :cond_1
    new-instance v3, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v3, v4, v5}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    aput-object v3, v1, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 92
    nop

    .line 94
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder$2;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$2;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 100
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/mail/Folder;

    return-object v1

    .line 103
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPFolder;

    .line 104
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 106
    .end local v2
    return-object v1

    .line 105
    .restart local v2
    :cond_1
    new-instance v3, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v3, v4, v5}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    aput-object v3, v1, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot rename Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
