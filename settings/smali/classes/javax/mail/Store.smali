.class public abstract Ljavax/mail/Store;
.super Ljavax/mail/Service;
.source "Store.java"


# instance fields
.field private volatile folderListeners:Ljava/util/Vector;

.field private volatile storeListeners:Ljava/util/Vector;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 75
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    .line 238
    iput-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    .line 76
    return-void
.end method


# virtual methods
.method public declared-synchronized addFolderListener(Ljavax/mail/event/FolderListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    .line 255
    :cond_0
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 256
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 252
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized addStoreListener(Ljavax/mail/event/StoreListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/StoreListener;

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    .line 202
    :cond_0
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 203
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 199
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public abstract getDefaultFolder()Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getPersonalNamespaces()[Ljavax/mail/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/mail/Folder;

    invoke-virtual {p0}, Ljavax/mail/Store;->getDefaultFolder()Ljavax/mail/Folder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getSharedNamespaces()[Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/Folder;

    return-object v0
.end method

.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/Folder;

    return-object v0
.end method

.method protected notifyFolderListeners(ILjavax/mail/Folder;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "folder"    # Ljavax/mail/Folder;

    .line 287
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    new-instance v0, Ljavax/mail/event/FolderEvent;

    invoke-direct {v0, p0, p2, p1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V

    .line 291
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 292
    return-void
.end method

.method protected notifyFolderRenamedListeners(Ljavax/mail/Folder;Ljavax/mail/Folder;)V
    .locals 2
    .param p1, "oldF"    # Ljavax/mail/Folder;
    .param p2, "newF"    # Ljavax/mail/Folder;

    .line 310
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 311
    return-void

    .line 313
    :cond_0
    new-instance v0, Ljavax/mail/event/FolderEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    .line 314
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 315
    return-void
.end method

.method protected notifyStoreListeners(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljavax/mail/event/StoreEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/StoreEvent;-><init>(Ljavax/mail/Store;ILjava/lang/String;)V

    .line 234
    .local v0, "e":Ljavax/mail/event/StoreEvent;
    iget-object v1, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 235
    return-void
.end method

.method public declared-synchronized removeFolderListener(Ljavax/mail/event/FolderListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 270
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 267
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized removeStoreListener(Ljavax/mail/event/StoreListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/StoreListener;

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 217
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 214
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
