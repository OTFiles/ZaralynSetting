.class public abstract Ljavax/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Folder$TerminatorEvent;
    }
.end annotation


# static fields
.field public static final HOLDS_FOLDERS:I = 0x2

.field public static final HOLDS_MESSAGES:I = 0x1

.field public static final READ_ONLY:I = 0x1

.field public static final READ_WRITE:I = 0x2


# instance fields
.field private volatile connectionListeners:Ljava/util/Vector;

.field private volatile folderListeners:Ljava/util/Vector;

.field private volatile messageChangedListeners:Ljava/util/Vector;

.field private volatile messageCountListeners:Ljava/util/Vector;

.field protected mode:I

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected store:Ljavax/mail/Store;


# direct methods
.method protected constructor <init>(Ljavax/mail/Store;)V
    .locals 1
    .param p1, "store"    # Ljavax/mail/Store;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Folder;->mode:I

    .line 1297
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    .line 1364
    iput-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    .line 1445
    iput-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    .line 1528
    iput-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    .line 1590
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    .line 134
    return-void
.end method

.method private queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .line 1597
    iget-object v0, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1598
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    if-nez v1, :cond_0

    .line 1599
    new-instance v1, Ljavax/mail/EventQueue;

    invoke-direct {v1}, Ljavax/mail/EventQueue;-><init>()V

    iput-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    .line 1597
    :cond_0
    monitor-exit v0

    .line 1610
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 1611
    .local v0, "v":Ljava/util/Vector;
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1612
    return-void

    .line 1597
    .end local v0
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private terminateQueue()V
    .locals 4

    .line 1629
    iget-object v0, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1630
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    if-eqz v1, :cond_0

    .line 1631
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1632
    .local v1, "dummyListeners":Ljava/util/Vector;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    .line 1633
    iget-object v2, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    new-instance v3, Ljavax/mail/Folder$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/Folder$TerminatorEvent;-><init>()V

    invoke-virtual {v2, v3, v1}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1634
    const/4 v2, 0x0

    iput-object v2, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    .line 1629
    .end local v1
    :cond_0
    monitor-exit v0

    .line 1637
    return-void

    .line 1629
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    monitor-enter p0

    .line 1310
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1311
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    .line 1312
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1313
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1309
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized addFolderListener(Ljavax/mail/event/FolderListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    monitor-enter p0

    .line 1376
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1377
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    .line 1378
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1379
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1375
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized addMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageChangedListener;

    monitor-enter p0

    .line 1541
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1542
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    .line 1543
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1544
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1540
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageCountListener;

    monitor-enter p0

    .line 1457
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1458
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    .line 1459
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1460
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1456
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public abstract appendMessages([Ljavax/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract close(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 3
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1162
    invoke-virtual {p2}, Ljavax/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p2, p1}, Ljavax/mail/Folder;->appendMessages([Ljavax/mail/Message;)V

    .line 1168
    return-void

    .line 1163
    :cond_0
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1165
    nop

    .line 1163
    invoke-direct {v0, v1, p2}, Ljavax/mail/FolderNotFoundException;-><init>(Ljava/lang/String;Ljavax/mail/Folder;)V

    throw v0
.end method

.method public abstract create(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract delete(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract expunge()[Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 0
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1005
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1640
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1641
    invoke-direct {p0}, Ljavax/mail/Folder;->terminateQueue()V

    .line 1642
    return-void
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 799
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 800
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 802
    :cond_0
    const/4 v0, 0x0

    .line 803
    .local v0, "deleted":I
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1

    .line 804
    .local v1, "total":I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v1, :cond_1

    .line 813
    .end local v2
    monitor-exit p0

    return v0

    .line 806
    .restart local v2
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3

    :try_end_2
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 808
    :catch_0
    move-exception v3

    .line 804
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    .end local v0
    .end local v1
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getMessage(I)Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 937
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v0

    .line 940
    .local v0, "total":I
    new-array v1, v0, [Ljavax/mail/Message;

    .line 941
    .local v1, "msgs":[Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v0, :cond_0

    .line 943
    .end local v2
    monitor-exit p0

    return-object v1

    .line 942
    .restart local v2
    :cond_0
    add-int/lit8 v3, v2, -0x1

    :try_start_1
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v1, v3

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 938
    .end local v0
    .end local v1
    .end local v2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getMessages(II)[Ljavax/mail/Message;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 877
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljavax/mail/Message;

    .line 878
    .local v0, "msgs":[Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p1

    .local v1, "i":I
    :goto_0
    if-le v1, p2, :cond_0

    .line 880
    .end local v1
    monitor-exit p0

    return-object v0

    .line 879
    .restart local v1
    :cond_0
    sub-int v2, v1, p1

    :try_start_1
    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v0, v2

    .line 878
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    .end local v0
    .end local v1
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getMessages([I)[Ljavax/mail/Message;
    .locals 4
    .param p1, "msgnums"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 907
    :try_start_0
    array-length v0, p1

    .line 908
    .local v0, "len":I
    new-array v1, v0, [Ljavax/mail/Message;

    .line 909
    .local v1, "msgs":[Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 911
    .end local v2
    monitor-exit p0

    return-object v1

    .line 910
    .restart local v2
    :cond_0
    :try_start_1
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v1, v2

    .line 909
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 906
    .end local v0
    .end local v1
    .end local v2
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public getMode()I
    .locals 2

    .line 636
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget v0, p0, Ljavax/mail/Folder;->mode:I

    return v0

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public declared-synchronized getNewMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 707
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 708
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 710
    :cond_0
    const/4 v0, 0x0

    .line 711
    .local v0, "newmsgs":I
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1

    .line 712
    .local v1, "total":I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v1, :cond_1

    .line 721
    .end local v2
    monitor-exit p0

    return v0

    .line 714
    .restart local v2
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3

    :try_end_2
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 716
    :catch_0
    move-exception v3

    .line 712
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    .end local v0
    .end local v1
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public abstract getParent()Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getPermanentFlags()Ljavax/mail/Flags;
.end method

.method public abstract getSeparator()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getStore()Ljavax/mail/Store;
    .locals 1

    .line 207
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    return-object v0
.end method

.method public abstract getType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getURLName()Ljavax/mail/URLName;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Store;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    .line 167
    .local v0, "storeURL":Ljavax/mail/URLName;
    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "fullname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v2, "encodedName":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljavax/mail/Folder;->getSeparator()C

    move-result v3

    .line 171
    .local v3, "separator":C
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_0
    new-instance v11, Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-virtual {v0}, Ljavax/mail/URLName;->getPort()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 197
    invoke-virtual {v0}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v9

    .line 198
    const/4 v10, 0x0

    .line 195
    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 753
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 754
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 756
    :cond_0
    const/4 v0, 0x0

    .line 757
    .local v0, "unread":I
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1

    .line 758
    .local v1, "total":I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v1, :cond_1

    .line 767
    .end local v2
    monitor-exit p0

    return v0

    .line 760
    .restart local v2
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3

    :try_end_2
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 762
    :catch_0
    move-exception v3

    .line 758
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    .end local v0
    .end local v1
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public abstract hasNewMessages()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public isSubscribed()Z
    .locals 1

    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public list()[Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 321
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public abstract list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public listSubscribed()[Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 339
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method protected notifyConnectionListeners(I)V
    .locals 2
    .param p1, "type"    # I

    .line 1344
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1345
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 1346
    .local v0, "e":Ljavax/mail/event/ConnectionEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1359
    .end local v0
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1360
    invoke-direct {p0}, Ljavax/mail/Folder;->terminateQueue()V

    .line 1361
    :cond_1
    return-void
.end method

.method protected notifyFolderListeners(I)V
    .locals 2
    .param p1, "type"    # I

    .line 1411
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1412
    new-instance v0, Ljavax/mail/event/FolderEvent;

    invoke-direct {v0, p0, p0, p1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V

    .line 1413
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1415
    .end local v0
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0, p1, p0}, Ljavax/mail/Store;->notifyFolderListeners(ILjavax/mail/Folder;)V

    .line 1416
    return-void
.end method

.method protected notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    .locals 2
    .param p1, "folder"    # Ljavax/mail/Folder;

    .line 1436
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1437
    new-instance v0, Ljavax/mail/event/FolderEvent;

    .line 1438
    const/4 v1, 0x3

    .line 1437
    invoke-direct {v0, p0, p0, p1, v1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    .line 1439
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1441
    .end local v0
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0, p0, p1}, Ljavax/mail/Store;->notifyFolderRenamedListeners(Ljavax/mail/Folder;Ljavax/mail/Folder;)V

    .line 1442
    return-void
.end method

.method protected notifyMessageAddedListeners([Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msgs"    # [Ljavax/mail/Message;

    .line 1490
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1491
    return-void

    .line 1493
    :cond_0
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    .line 1494
    nop

    .line 1495
    const/4 v1, 0x1

    .line 1496
    const/4 v2, 0x0

    .line 1497
    nop

    .line 1493
    invoke-direct {v0, p0, v1, v2, p1}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1499
    .local v0, "e":Ljavax/mail/event/MessageCountEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1500
    return-void
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "msg"    # Ljavax/mail/Message;

    .line 1572
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1573
    return-void

    .line 1575
    :cond_0
    new-instance v0, Ljavax/mail/event/MessageChangedEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    .line 1576
    .local v0, "e":Ljavax/mail/event/MessageChangedEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1577
    return-void
.end method

.method protected notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    .locals 2
    .param p1, "removed"    # Z
    .param p2, "msgs"    # [Ljavax/mail/Message;

    .line 1516
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1517
    return-void

    .line 1519
    :cond_0
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    .line 1520
    nop

    .line 1521
    const/4 v1, 0x2

    .line 1522
    nop

    .line 1523
    nop

    .line 1519
    invoke-direct {v0, p0, v1, p1, p2}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1524
    .local v0, "e":Ljavax/mail/event/MessageCountEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1525
    return-void
.end method

.method public abstract open(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    monitor-enter p0

    .line 1326
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1328
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 1325
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized removeFolderListener(Ljavax/mail/event/FolderListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    monitor-enter p0

    .line 1391
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1393
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 1390
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized removeMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageChangedListener;

    monitor-enter p0

    .line 1557
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1559
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 1556
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized removeMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageCountListener;

    monitor-enter p0

    .line 1473
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1475
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 1472
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public abstract renameTo(Ljavax/mail/Folder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 1
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1226
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessages()[Ljavax/mail/Message;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 3
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1260
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1263
    .local v0, "matchedMsgs":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    .line 1270
    .end local v1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Message;

    .line 1271
    .local v1, "m":[Ljavax/mail/Message;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1272
    return-object v1

    .line 1265
    .local v1, "i":I
    :cond_0
    :try_start_0
    aget-object v2, p2, v1

    invoke-virtual {v2, p1}, Ljavax/mail/Message;->match(Ljavax/mail/search/SearchTerm;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1266
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :try_end_0
    .catch Ljavax/mail/MessageRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1267
    :catch_0
    move-exception v2

    .line 1263
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setFlags(IILjavax/mail/Flags;Z)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "flag"    # Ljavax/mail/Flags;
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1080
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-le v0, p2, :cond_0

    .line 1088
    .end local v0
    monitor-exit p0

    return-void

    .line 1082
    .restart local v0
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v1

    .line 1083
    .local v1, "msg":Ljavax/mail/Message;
    invoke-virtual {v1, p3, p4}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V

    :try_end_0
    .catch Ljavax/mail/MessageRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1079
    .end local v0
    .end local v1
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1

    .line 1084
    .restart local v0
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :catch_0
    move-exception v1

    .line 1080
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setFlags([ILjavax/mail/Flags;Z)V
    .locals 2
    .param p1, "msgnums"    # [I
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 1130
    .end local v0
    monitor-exit p0

    return-void

    .line 1124
    .restart local v0
    :cond_0
    :try_start_1
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v1

    .line 1125
    .local v1, "msg":Ljavax/mail/Message;
    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V

    :try_end_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1126
    .end local v1
    :catch_0
    move-exception v1

    .line 1122
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1121
    .end local v0
    .end local p1
    .end local p2
    .end local p3
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .locals 2
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1037
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 1044
    .end local v0
    monitor-exit p0

    return-void

    .line 1039
    .restart local v0
    :cond_0
    :try_start_1
    aget-object v1, p1, v0

    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V

    :try_end_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1040
    :catch_0
    move-exception v1

    .line 1037
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1036
    .end local v0
    .end local p1
    .end local p2
    .end local p3
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public setSubscribed(Z)V
    .locals 1
    .param p1, "subscribe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 425
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    invoke-direct {v0}, Ljavax/mail/MethodNotSupportedException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1651
    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 1652
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1653
    return-object v0

    .line 1655
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
