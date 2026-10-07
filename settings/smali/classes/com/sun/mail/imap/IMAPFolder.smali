.class public Lcom/sun/mail/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/iap/ResponseHandler;
.implements Ljavax/mail/UIDFolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;,
        Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ABORTING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final RUNNING:I = 0x0

.field protected static final UNKNOWN_SEPARATOR:C = '\uffff'


# instance fields
.field protected attributes:[Ljava/lang/String;

.field protected availableFlags:Ljavax/mail/Flags;

.field private cachedStatus:Lcom/sun/mail/imap/protocol/Status;

.field private cachedStatusTime:J

.field private connectionPoolDebug:Z

.field private debug:Z

.field private doExpungeNotification:Z

.field protected exists:Z

.field protected fullName:Ljava/lang/String;

.field private idleState:I

.field protected isNamespace:Z

.field protected messageCache:Ljava/util/Vector;

.field protected messageCacheLock:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field private opened:Z

.field private out:Ljava/io/PrintStream;

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private realTotal:I

.field private reallyClosed:Z

.field private recent:I

.field protected separator:C

.field private total:I

.field protected type:I

.field protected uidTable:Ljava/util/Hashtable;

.field private uidnext:J

.field private uidvalidity:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 158
    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
    .locals 2
    .param p1, "li"    # Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .line 369
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iget-char v1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    invoke-direct {p0, v0, v1, p2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    .line 371
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v0, :cond_0

    .line 372
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 373
    :cond_0
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 374
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 375
    :cond_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 376
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 377
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    .locals 4
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .line 318
    invoke-direct {p0, p3}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 167
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 184
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 248
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 250
    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 252
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 253
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 255
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 256
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 257
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 259
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 260
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    .line 262
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    .line 319
    if-eqz p1, :cond_2

    .line 321
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 322
    iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 323
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    .line 324
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebug()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    .line 325
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getConnectionPoolDebug()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z

    .line 326
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    .line 327
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    if-nez v2, :cond_0

    .line 328
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    .line 341
    :cond_0
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 342
    const v2, 0xffff

    if-eq p2, v2, :cond_1

    if-eqz p2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 344
    .local v2, "i":I
    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_1

    .line 345
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 346
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 349
    .end local v2
    :cond_1
    return-void

    .line 320
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Folder name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Z)V
    .locals 0
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "store"    # Lcom/sun/mail/imap/IMAPStore;
    .param p4, "isNamespace"    # Z

    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    .line 362
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 363
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/Status;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1335
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPFolder;)I
    .locals 0

    .line 248
    iget p0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return p0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPFolder;I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return-void
.end method

.method private checkClosed()V
    .locals 2

    .line 397
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 401
    return-void

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 399
    nop

    .line 398
    const-string v1, "This operation is not allowed on an open folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkExists()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 387
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1
    :goto_0
    return-void
.end method

.method private checkFlags(Ljavax/mail/Flags;)V
    .locals 3
    .param p1, "flags"    # Ljavax/mail/Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 457
    nop

    .line 458
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 468
    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot change flags on READ_ONLY folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 408
    nop

    .line 409
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_1

    .line 410
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 412
    nop

    .line 411
    const-string v1, "This operation is not allowed on a closed folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    new-instance v0, Ljavax/mail/FolderClosedException;

    .line 416
    nop

    .line 415
    const-string v1, "Lost folder connection to server"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_1
    return-void
.end method

.method private checkRange(I)V
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 428
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 431
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_0

    .line 432
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 437
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    .line 448
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_1

    .line 450
    return-void

    .line 449
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 437
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 444
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 440
    .end local v1
    :catch_1
    move-exception v1

    .line 442
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 437
    .end local v1
    :goto_0
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private cleanup(Z)V
    .locals 2
    .param p1, "returnToPool"    # Z

    .line 1130
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1132
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    .line 1133
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1135
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1136
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1137
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 1138
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V

    .line 1139
    return-void
.end method

.method private close(ZZ)V
    .locals 5
    .param p1, "expunge"    # Z
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1057
    nop

    .line 1058
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1066
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1067
    const-string v2, "This operation is not allowed on a closed folder"

    .line 1066
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1070
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1076
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v2, :cond_2

    .line 1077
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 1080
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 1081
    if-eqz p2, :cond_4

    .line 1082
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    if-eqz v2, :cond_3

    .line 1083
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: forcing folder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    const-string v4, " to close"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1085
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_9

    .line 1086
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto :goto_2

    .line 1087
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1089
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    if-eqz v2, :cond_5

    .line 1090
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG: pool is full, not adding an Authenticated connection"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1094
    :cond_5
    if-eqz p1, :cond_6

    .line 1095
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1097
    :cond_6
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_9

    .line 1098
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V

    goto :goto_2

    .line 1103
    :cond_7
    if-nez p1, :cond_8

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1105
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .local v2, "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1106
    .end local v2
    :catch_0
    move-exception v2

    .line 1107
    .local v2, "pex2":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v3, :cond_8

    .line 1108
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 1111
    .end local v2
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_9

    .line 1112
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1118
    :try_end_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_2
    :try_start_4
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v2, :cond_a

    .line 1119
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1058
    :cond_a
    monitor-exit v0

    .line 1122
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 1116
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1114
    :catch_1
    move-exception v2

    .line 1115
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1116
    .end local v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    nop

    .line 1118
    :try_start_6
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v3, :cond_b

    .line 1119
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1120
    :cond_b
    throw v2

    .line 1058
    :catchall_1
    move-exception v1

    monitor-exit v0

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private declared-synchronized doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "subscribed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 586
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 588
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 589
    new-array v0, v1, [Ljavax/mail/Folder;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 591
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 593
    .local v0, "c":C
    nop

    .line 594
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V

    .line 593
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 604
    .local v2, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-nez v2, :cond_1

    .line 605
    new-array v1, v1, [Ljavax/mail/Folder;

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 618
    :cond_1
    const/4 v3, 0x0

    .line 620
    .local v3, "start":I
    :try_start_2
    array-length v4, v2

    if-lez v4, :cond_2

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    const/4 v3, 0x1

    .line 623
    :cond_2
    array-length v1, v2

    sub-int/2addr v1, v3

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPFolder;

    .line 624
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v4, v5, :cond_3

    .line 626
    .end local v4
    monitor-exit p0

    return-object v1

    .line 625
    .restart local v4
    :cond_3
    sub-int v5, v4, v3

    :try_start_3
    new-instance v6, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v7, v2, v4

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v8, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v6, v7, v8}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    aput-object v6, v1, v5

    .line 624
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 585
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "li"    # [Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "lname"    # Ljava/lang/String;

    .line 557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 558
    :cond_0
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    nop

    .line 561
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 565
    const/4 v0, 0x0

    .line 567
    :cond_1
    return v0

    .line 557
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2465
    nop

    .line 2466
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 2467
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0
.end method

.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1336
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStatusCacheTimeout()I

    move-result v0

    .line 1339
    .local v0, "statusCacheTimeout":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    if-eqz v1, :cond_0

    .line 1340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1341
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    return-object v1

    .line 1343
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 1346
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    move-object v2, v3

    .line 1347
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v1

    .line 1349
    .local v1, "s":Lcom/sun/mail/imap/protocol/Status;
    if-lez v0, :cond_1

    .line 1350
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    .line 1353
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    .line 1355
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1353
    return-object v1

    .line 1354
    .end local v1
    :catchall_0
    move-exception v1

    .line 1355
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1356
    throw v1
.end method

.method private isDirectory()Z
    .locals 1

    .line 2708
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private keepConnectionAlive(Z)V
    .locals 8
    .param p1, "keepStoreAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2671
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 2672
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 2675
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2676
    const/4 v0, 0x0

    .line 2678
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 2679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 2680
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 2682
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .end local v0
    goto :goto_0

    .line 2681
    .restart local v0
    :catchall_0
    move-exception v1

    .line 2682
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v2, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2683
    throw v1

    .line 2685
    .end local v0
    :cond_2
    :goto_0
    return-void
.end method

.method private releaseProtocol(Z)V
    .locals 2
    .param p1, "returnToPool"    # Z

    .line 2649
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    .line 2650
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 2652
    if-eqz p1, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 2655
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2657
    :cond_1
    :goto_0
    return-void
.end method

.method private setACL(Lcom/sun/mail/imap/ACL;C)V
    .locals 2
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .param p2, "mod"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2140
    const-string v0, "ACL not supported"

    .line 2141
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder$18;-><init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V

    .line 2140
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2148
    return-void
.end method

.method private declared-synchronized throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    .locals 3
    .param p1, "cex"    # Lcom/sun/mail/iap/ConnectionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;,
            Ljavax/mail/StoreClosedException;
        }
    .end annotation

    monitor-enter p0

    .line 2449
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq v0, v1, :cond_1

    .line 2450
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v0, :cond_2

    .line 2451
    :cond_1
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 2453
    :cond_2
    new-instance v0, Ljavax/mail/StoreClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v0

    .line 2448
    .end local p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method


# virtual methods
.method public addACL(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2045
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2046
    return-void
.end method

.method public declared-synchronized addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 8
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1490
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1491
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/internet/MimeMessage;

    .line 1492
    .local v0, "rmsgs":[Ljavax/mail/Message;
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v1

    .line 1493
    .local v1, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    .line 1505
    .end local v2
    monitor-exit p0

    return-object v0

    .line 1494
    .restart local v2
    :cond_0
    :try_start_1
    aget-object v3, v1, v2

    .line 1495
    .local v3, "auid":Lcom/sun/mail/imap/AppendUID;
    if-eqz v3, :cond_1

    .line 1496
    iget-wide v4, v3, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1498
    :try_start_2
    iget-wide v4, v3, Lcom/sun/mail/imap/AppendUID;->uid:J

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v0, v2

    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1499
    :catch_0
    move-exception v4

    .line 1493
    .end local v3
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1489
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

.method public addRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2077
    const/16 v0, 0x2b

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2078
    return-void
.end method

.method public declared-synchronized appendMessages([Ljavax/mail/Message;)V
    .locals 8
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1375
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1382
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    .line 1384
    .local v0, "maxsize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    .line 1412
    .end local v1
    monitor-exit p0

    return-void

    .line 1385
    .restart local v1
    :cond_0
    :try_start_1
    aget-object v2, p1, v1

    .line 1390
    .local v2, "m":Ljavax/mail/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Lcom/sun/mail/imap/MessageLiteral;

    .line 1391
    invoke-virtual {v2}, Ljavax/mail/Message;->getSize()I

    move-result v4

    if-le v4, v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 1390
    :cond_1
    move v4, v0

    :goto_1
    invoke-direct {v3, v2, v4}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V

    .line 1396
    .local v3, "mos":Lcom/sun/mail/imap/MessageLiteral;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    .line 1399
    :try_start_3
    invoke-virtual {v2}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v4

    .line 1400
    .local v4, "d":Ljava/util/Date;
    if-nez v4, :cond_2

    .line 1401
    invoke-virtual {v2}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v5

    move-object v4, v5

    .line 1402
    :cond_2
    move-object v5, v4

    .line 1403
    .local v5, "dd":Ljava/util/Date;
    invoke-virtual {v2}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v6

    .line 1404
    .local v6, "f":Ljavax/mail/Flags;
    new-instance v7, Lcom/sun/mail/imap/IMAPFolder$10;

    invoke-direct {v7, p0, v6, v5, v3}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    goto :goto_2

    .line 1395
    .restart local v2
    :catch_0
    move-exception v3

    .line 1396
    .local v3, "mrex":Ljavax/mail/MessageRemovedException;
    nop

    .line 1384
    .end local v2
    .end local v3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1392
    .restart local v2
    :catch_1
    move-exception v3

    .line 1393
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljavax/mail/MessagingException;

    .line 1394
    const-string v5, "IOException while appending messages"

    .line 1393
    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 1374
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
    .locals 9
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1431
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1438
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    .line 1440
    .local v0, "maxsize":I
    array-length v1, p1

    new-array v1, v1, [Lcom/sun/mail/imap/AppendUID;

    .line 1441
    .local v1, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    .line 1469
    .end local v2
    monitor-exit p0

    return-object v1

    .line 1442
    .restart local v2
    :cond_0
    :try_start_1
    aget-object v3, p1, v2

    .line 1447
    .local v3, "m":Ljavax/mail/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Lcom/sun/mail/imap/MessageLiteral;

    .line 1448
    invoke-virtual {v3}, Ljavax/mail/Message;->getSize()I

    move-result v5

    if-le v5, v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 1447
    :cond_1
    move v5, v0

    :goto_1
    invoke-direct {v4, v3, v5}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V

    .line 1453
    .local v4, "mos":Lcom/sun/mail/imap/MessageLiteral;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    .line 1456
    :try_start_3
    invoke-virtual {v3}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v5

    .line 1457
    .local v5, "d":Ljava/util/Date;
    if-nez v5, :cond_2

    .line 1458
    invoke-virtual {v3}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    .line 1459
    :cond_2
    move-object v6, v5

    .line 1460
    .local v6, "dd":Ljava/util/Date;
    invoke-virtual {v3}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v7

    .line 1461
    .local v7, "f":Ljavax/mail/Flags;
    new-instance v8, Lcom/sun/mail/imap/IMAPFolder$11;

    invoke-direct {v8, p0, v7, v6, v4}, Lcom/sun/mail/imap/IMAPFolder$11;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/mail/imap/AppendUID;

    .line 1467
    .local v8, "auid":Lcom/sun/mail/imap/AppendUID;
    aput-object v8, v1, v2

    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    goto :goto_2

    .line 1452
    .restart local v3
    :catch_0
    move-exception v4

    .line 1453
    .local v4, "mrex":Ljavax/mail/MessageRemovedException;
    nop

    .line 1441
    .end local v3
    .end local v4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1449
    .restart local v3
    :catch_1
    move-exception v4

    .line 1450
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljavax/mail/MessagingException;

    .line 1451
    const-string v6, "IOException while appending messages"

    .line 1450
    invoke-direct {v5, v6, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 1430
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized close(Z)V
    .locals 1
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1042
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V

    .line 1043
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1041
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 5
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1514
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1516
    array-length v0, p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1517
    monitor-exit p0

    return-void

    .line 1520
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_3

    .line 1521
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1523
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1524
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    .line 1525
    .local v2, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v2, :cond_1

    .line 1528
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V

    .line 1521
    .end local v1
    .end local v2
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1526
    .restart local v1
    .restart local v2
    :cond_1
    :try_start_4
    new-instance v3, Ljavax/mail/MessageRemovedException;

    .line 1527
    const-string v4, "Messages have been removed"

    .line 1526
    invoke-direct {v3, v4}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1521
    .end local v1
    .end local v2
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1539
    :catch_0
    move-exception v1

    .line 1540
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1537
    .end local v1
    :catch_1
    move-exception v1

    .line 1538
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1529
    .end local v1
    :catch_2
    move-exception v1

    .line 1530
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRYCREATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1531
    new-instance v2, Ljavax/mail/FolderNotFoundException;

    .line 1532
    nop

    .line 1533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1531
    invoke-direct {v2, p2, v3}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1536
    :cond_2
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1521
    .end local v1
    :goto_0
    monitor-exit v0

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 1544
    :cond_3
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V

    .line 1545
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    .line 1513
    .end local p1
    .end local p2
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized create(I)Z
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "c":C
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 723
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v1

    move v0, v1

    goto :goto_0

    .line 720
    .end local v0
    .end local p1
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 724
    .restart local v0
    .restart local p1
    :cond_0
    :goto_0
    move v1, v0

    .line 725
    .local v1, "sep":C
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    .line 753
    .local v2, "ret":Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 754
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 759
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v3

    .line 760
    .local v3, "retb":Z
    if-eqz v3, :cond_2

    .line 761
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V

    .line 762
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return v3

    .line 720
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local p1
    :goto_1
    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized delete(Z)Z
    .locals 3
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 831
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 833
    if-eqz p1, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;

    move-result-object v0

    .line 836
    .local v0, "f":[Ljavax/mail/Folder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .end local v0
    .end local v1
    goto :goto_1

    .line 837
    .restart local v0
    .restart local v1
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljavax/mail/Folder;->delete(Z)Z

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    .end local v0
    .end local v1
    :cond_1
    :goto_1
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$8;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    .line 849
    .local v0, "ret":Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 851
    monitor-exit p0

    return v1

    .line 854
    :cond_2
    :try_start_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 855
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 858
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V

    .line 859
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 830
    .end local v0
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2570
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2574
    :catch_0
    move-exception v0

    .line 2575
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2571
    .end local v0
    :catch_1
    move-exception v0

    .line 2573
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 2577
    .end local v0
    const/4 v0, 0x0

    return-object v0
.end method

.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2598
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    :try_end_0
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2604
    :catch_0
    move-exception v0

    .line 2605
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2601
    .end local v0
    :catch_1
    move-exception v1

    .line 2603
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 2607
    .end local v1
    return-object v0

    .line 2599
    :catch_2
    move-exception v1

    .line 2600
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    return-object v0
.end method

.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "err"    # Ljava/lang/String;
    .param p2, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2583
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    :try_end_0
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2589
    :catch_0
    move-exception v0

    .line 2590
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2586
    .end local v0
    :catch_1
    move-exception v0

    .line 2588
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 2592
    .end local v0
    const/4 v0, 0x0

    return-object v0

    .line 2584
    :catch_2
    move-exception v0

    .line 2585
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-direct {v1, p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 2
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2612
    monitor-enter p0

    .line 2614
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2615
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2616
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v1

    .line 2615
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 2612
    :cond_0
    monitor-exit p0

    .line 2622
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x0

    .line 2625
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 2626
    invoke-interface {p1, v0}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object v1

    .line 2628
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2626
    return-object v1

    .line 2627
    :catchall_1
    move-exception v1

    .line 2628
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2629
    throw v1

    .line 2612
    .end local v0
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public declared-synchronized exists()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 512
    const/4 v0, 0x0

    :try_start_0
    move-object v1, v0

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 514
    .local v1, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v2, :cond_0

    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v2, :cond_0

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v3, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "lname":Ljava/lang/String;
    goto :goto_0

    .line 517
    .end local v2
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 519
    .restart local v2
    :goto_0
    new-instance v3, Lcom/sun/mail/imap/IMAPFolder$1;

    invoke-direct {v3, p0, v2}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v1, v3

    .line 525
    if-eqz v1, :cond_4

    .line 526
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v0

    .line 527
    .local v0, "i":I
    aget-object v3, v1, v0

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 528
    aget-object v3, v1, v0

    iget-char v3, v3, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v3, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 529
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 530
    .local v3, "len":I
    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    .line 531
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v6, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-ne v4, v6, :cond_1

    .line 532
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 534
    :cond_1
    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 535
    aget-object v4, v1, v0

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v4, :cond_2

    .line 536
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 537
    :cond_2
    aget-object v4, v1, v0

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 538
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 539
    :cond_3
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 540
    aget-object v4, v1, v0

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    goto :goto_1

    .line 542
    .end local v0
    .end local v3
    :cond_4
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 543
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 546
    :goto_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 511
    .end local v1
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized expunge()[Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1551
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

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

.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 9
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1559
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1561
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1563
    .local v0, "v":Ljava/util/Vector;
    if-eqz p1, :cond_0

    .line 1565
    new-instance v1, Ljavax/mail/FetchProfile;

    invoke-direct {v1}, Ljavax/mail/FetchProfile;-><init>()V

    .line 1566
    .local v1, "fp":Ljavax/mail/FetchProfile;
    sget-object v2, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v1, v2}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 1567
    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 1570
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1571
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 1573
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1574
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz p1, :cond_1

    .line 1575
    invoke-static {p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V

    goto :goto_0

    .line 1577
    :cond_1
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V

    .line 1591
    .end local v3
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 1596
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 1570
    .end local v3
    monitor-exit v1

    .line 1628
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 1631
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Message;

    .line 1632
    .local v1, "rmsgs":[Ljavax/mail/Message;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1633
    array-length v3, v1

    if-lez v3, :cond_3

    .line 1634
    invoke-virtual {p0, v2, v1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    .line 1635
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    monitor-exit p0

    return-object v1

    .line 1597
    .end local v1
    .restart local v3
    :cond_4
    :try_start_5
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/IMAPMessage;

    .line 1598
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1599
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1609
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1612
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v5, :cond_2

    .line 1613
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v5

    .line 1614
    .local v5, "uid":J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    .line 1615
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5
    goto :goto_1

    .line 1621
    :cond_5
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V

    .line 1622
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v3, v3, 0x1

    .end local v4
    goto :goto_1

    .line 1590
    .end local v3
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1587
    :catch_0
    move-exception v3

    .line 1589
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 1585
    .end local v3
    :catch_1
    move-exception v3

    .line 1586
    .local v3, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v4, Ljavax/mail/FolderClosedException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 1578
    .end local v3
    :catch_2
    move-exception v3

    .line 1580
    .local v3, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 1581
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 1582
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot expunge READ_ONLY folder: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1581
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1584
    :cond_6
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 1590
    .end local v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    nop

    .line 1591
    :try_start_7
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 1592
    throw v3

    .line 1570
    :catchall_1
    move-exception v2

    monitor-exit v1

    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2

    .line 1558
    .end local v0
    .end local p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 0
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1007
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1008
    invoke-static {p0, p1, p2}, Lcom/sun/mail/imap/IMAPMessage;->fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 1009
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1006
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized forceClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1049
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V

    .line 1050
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public getACL()[Lcom/sun/mail/imap/ACL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2027
    const-string v0, "ACL not supported"

    .line 2028
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$14;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$14;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2027
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    return-object v0
.end method

.method public getAttributes()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2157
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2158
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 2159
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1307
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1308
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1310
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1315
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1316
    .local v0, "f":Ljavax/mail/Flags;
    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    .line 1318
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1319
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1320
    .local v2, "matches":[I
    array-length v3, v2

    monitor-exit v1

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    .line 1318
    .end local v2
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 1324
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v1

    .line 1326
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1322
    .end local v1
    :catch_1
    move-exception v1

    .line 1323
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1306
    .end local v0
    .end local v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot contain subfolders"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 823
    .local v0, "c":C
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v1, v2, v0, v3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    return-object v1
.end method

.method public declared-synchronized getFullName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

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

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .locals 2
    .param p1, "msgnum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1364
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1365
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V

    .line 1367
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Message;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1363
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 3
    .param p1, "seqnum"    # I

    .line 2699
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-lt v0, v1, :cond_0

    .line 2704
    .end local v0
    const/4 v0, 0x0

    return-object v0

    .line 2700
    .restart local v0
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPMessage;

    .line 2701
    .local v1, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 2702
    return-object v1

    .line 2699
    .end local v1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
    .locals 6
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1801
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1803
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 1806
    .local v0, "m":Lcom/sun/mail/imap/IMAPMessage;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1807
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 1809
    .local v2, "l":Ljava/lang/Long;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_0

    .line 1811
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    move-object v0, v3

    .line 1812
    if-eqz v0, :cond_1

    .line 1813
    monitor-exit v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1815
    :cond_0
    :try_start_3
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1819
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v3

    .line 1821
    .local v3, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt v4, v5, :cond_2

    .line 1822
    iget v4, v3, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    move-object v0, v4

    .line 1823
    iget-wide v4, v3, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v0, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1825
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    .end local v2
    .end local v3
    :cond_2
    monitor-exit v1

    .line 1834
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1806
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 1830
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v1

    .line 1831
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1828
    .end local v1
    :catch_1
    move-exception v1

    .line 1829
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1800
    .end local v0
    .end local v1
    .end local p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1168
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1173
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1174
    .local v0, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v1, v0, Lcom/sun/mail/imap/protocol/Status;->total:I

    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return v1

    .line 1193
    .end local v0
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1191
    .end local v0
    :catch_1
    move-exception v0

    .line 1192
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1

    .line 1175
    .end local v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_2
    move-exception v0

    .line 1178
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v1, 0x0

    .line 1181
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 1182
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1183
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1184
    iget v3, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 1189
    :try_end_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1184
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return v3

    .line 1188
    .end local v2
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1185
    :catch_3
    move-exception v2

    .line 1187
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1188
    .end local v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    nop

    .line 1189
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1190
    throw v2

    .line 1199
    .end local v0
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v1, 0x1

    :try_start_7
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1203
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v0

    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v1

    .line 1199
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 1206
    :catch_4
    move-exception v1

    .line 1207
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_9
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1204
    .end local v1
    :catch_5
    move-exception v1

    .line 1205
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1199
    .end local v1
    :goto_1
    monitor-exit v0

    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1

    .line 1167
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1844
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1849
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1850
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 1851
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1854
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[Lcom/sun/mail/imap/protocol/UID;

    move-result-object v1

    .line 1856
    .local v1, "ua":[Lcom/sun/mail/imap/protocol/UID;
    array-length v2, v1

    new-array v2, v2, [Ljavax/mail/Message;

    .line 1859
    .local v2, "msgs":[Ljavax/mail/Message;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_1

    .line 1849
    .end local v1
    .end local v3
    monitor-exit v0

    .line 1869
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 1872
    .end local v2
    .local v0, "msgs":[Ljavax/mail/Message;
    monitor-exit p0

    return-object v0

    .line 1860
    .end local v0
    .restart local v1
    .restart local v2
    .restart local v3
    :cond_1
    :try_start_3
    aget-object v4, v1, v3

    iget v4, v4, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    .line 1861
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    aget-object v5, v1, v3

    iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v4, v5, v6}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1862
    aput-object v4, v2, v3

    .line 1863
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Long;

    aget-object v7, v1, v3

    iget-wide v7, v7, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    add-int/lit8 v3, v3, 0x1

    .end local v4
    goto :goto_0

    .line 1849
    .end local v1
    .end local v2
    .end local v3
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 1868
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    .line 1869
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1866
    .end local v0
    :catch_1
    move-exception v0

    .line 1867
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 1843
    .end local v0
    .end local p1
    .end local p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
    .locals 9
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1884
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1887
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1888
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p1

    .line 1889
    .local v1, "unavailUids":[J
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v2, :cond_3

    .line 1890
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1892
    .local v2, "v":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 1898
    .end local v3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1899
    .local v3, "vsize":I
    new-array v4, v3, [J

    move-object v1, v4

    .line 1900
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v3, :cond_0

    .end local v4
    goto :goto_2

    .line 1901
    .restart local v4
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v4

    .line 1900
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1893
    .end local v4
    .local v3, "i":I
    :cond_1
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Long;

    aget-wide v6, p1, v3

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object v6, v5

    .local v6, "l":Ljava/lang/Long;
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1895
    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1892
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .end local v6
    goto :goto_0

    .line 1903
    .end local v2
    .end local v3
    :cond_3
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1905
    :goto_2
    array-length v2, v1

    if-lez v2, :cond_5

    .line 1907
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)[Lcom/sun/mail/imap/protocol/UID;

    move-result-object v2

    .line 1909
    .local v2, "ua":[Lcom/sun/mail/imap/protocol/UID;
    const/4 v3, 0x0

    .restart local v3
    :goto_3
    array-length v4, v2

    if-lt v3, v4, :cond_4

    .end local v2
    .end local v3
    goto :goto_4

    .line 1910
    .restart local v2
    .restart local v3
    :cond_4
    aget-object v4, v2, v3

    iget v4, v4, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    .line 1911
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    aget-object v5, v2, v3

    iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v4, v5, v6}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1912
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Long;

    aget-object v7, v2, v3

    iget-wide v7, v7, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    add-int/lit8 v3, v3, 0x1

    .end local v4
    goto :goto_3

    .line 1917
    .end local v2
    .end local v3
    :cond_5
    :goto_4
    array-length v2, p1

    new-array v2, v2, [Ljavax/mail/Message;

    .line 1918
    .local v2, "msgs":[Ljavax/mail/Message;
    const/4 v3, 0x0

    .restart local v3
    :goto_5
    array-length v4, p1

    if-lt v3, v4, :cond_6

    .line 1920
    .end local v3
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 1919
    .restart local v3
    :cond_6
    :try_start_3
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Long;

    aget-wide v6, p1, v3

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Message;

    aput-object v4, v2, v3

    .line 1918
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1887
    .end local v1
    .end local v2
    .end local v3
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 1924
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    .line 1925
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1922
    .end local v0
    :catch_1
    move-exception v0

    .line 1923
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 1883
    .end local v0
    .end local p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 479
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;

    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 484
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getNewMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1217
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1218
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1222
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1223
    .local v0, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v1, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return v1

    .line 1242
    .end local v0
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1240
    .end local v0
    :catch_1
    move-exception v0

    .line 1241
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1

    .line 1224
    .end local v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_2
    move-exception v0

    .line 1227
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v1, 0x0

    .line 1230
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 1231
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1232
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1233
    iget v3, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 1238
    :try_end_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1233
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return v3

    .line 1237
    .end local v2
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1234
    :catch_3
    move-exception v2

    .line 1236
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1237
    .end local v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    nop

    .line 1238
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1239
    throw v2

    .line 1248
    .end local v0
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1251
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v1, 0x1

    :try_start_7
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1252
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v0

    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v1

    .line 1248
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 1255
    :catch_4
    move-exception v1

    .line 1256
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_9
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1253
    .end local v1
    :catch_5
    move-exception v1

    .line 1254
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1248
    .end local v1
    :goto_1
    monitor-exit v0

    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1

    .line 1216
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Folder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 500
    .local v0, "c":C
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 501
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 502
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/imap/IMAPStore;

    .line 501
    invoke-direct {v1, v3, v0, v4}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 504
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sun/mail/imap/DefaultFolder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v1, v3}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 497
    .end local v0
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getPermanentFlags()Ljavax/mail/Flags;
    .locals 1

    monitor-enter p0

    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

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

.method public getQuota()[Ljavax/mail/Quota;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1989
    const-string v0, "QUOTA not supported"

    .line 1990
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$12;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$12;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 1989
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0
.end method

.method public declared-synchronized getSeparator()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 633
    :try_start_0
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 634
    const/4 v0, 0x0

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 636
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$3;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v1

    .line 649
    if-eqz v0, :cond_0

    .line 650
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-char v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    goto :goto_0

    .line 652
    :cond_0
    const/16 v1, 0x2f    # '/'

    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 654
    .end local v0
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 2430
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z

    if-eqz v0, :cond_0

    .line 2431
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: getStoreProtocol() - borrowing a connection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2434
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2429
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 661
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    goto :goto_0

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 668
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)J
    .locals 8
    .param p1, "message"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1934
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 1938
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1940
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    .line 1943
    .local v0, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v3, v1

    .local v3, "uid":J
    const-wide/16 v5, -0x1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 1944
    monitor-exit p0

    return-wide v3

    .line 1946
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1948
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1949
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1950
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v5

    .line 1952
    .local v5, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v5, :cond_2

    .line 1953
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    move-wide v3, v6

    .line 1954
    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1957
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v6, :cond_1

    .line 1958
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1959
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    .end local v2
    .end local v5
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    monitor-exit v1

    .line 1968
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-wide v3

    .line 1946
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1963
    :catch_0
    move-exception v2

    .line 1964
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 1961
    .end local v2
    :catch_1
    move-exception v2

    .line 1962
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v5, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5

    .line 1946
    .end local v2
    :goto_0
    monitor-exit v1

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 1935
    .end local v0
    .end local v3
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 1936
    const-string v1, "Message does not belong to this folder"

    .line 1935
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1933
    .end local p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getUIDNext()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1770
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 1771
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 1773
    :cond_0
    const/4 v0, 0x0

    .line 1774
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v1, 0x0

    .line 1777
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 1778
    const-string v2, "UIDNEXT"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1779
    .local v2, "item":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v3

    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1789
    .end local v2
    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1788
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1786
    :catch_0
    move-exception v2

    .line 1787
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1783
    .end local v2
    :catch_1
    move-exception v2

    .line 1785
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .end local v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1790
    :goto_1
    nop

    .line 1792
    :try_start_4
    iget-wide v2, v1, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-wide v2

    .line 1780
    :catch_2
    move-exception v2

    .line 1782
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Cannot obtain UIDNext"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1788
    .end local v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    nop

    .line 1789
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1790
    throw v2

    .line 1769
    .end local v0
    .end local v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getUIDValidity()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1726
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 1727
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 1729
    :cond_0
    const/4 v0, 0x0

    .line 1730
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v1, 0x0

    .line 1733
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 1734
    const-string v2, "UIDVALIDITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1735
    .local v2, "item":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v3

    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1745
    .end local v2
    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1744
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1742
    :catch_0
    move-exception v2

    .line 1743
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1739
    .end local v2
    :catch_1
    move-exception v2

    .line 1741
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .end local v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1746
    :goto_1
    nop

    .line 1748
    :try_start_4
    iget-wide v2, v1, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-wide v2

    .line 1736
    :catch_2
    move-exception v2

    .line 1738
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Cannot obtain UIDValidity"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1744
    .end local v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    nop

    .line 1745
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1746
    throw v2

    .line 1725
    .end local v0
    .end local v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1266
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1267
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1271
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1272
    .local v0, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v1, v0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    .line 1280
    .end local v0
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1278
    .end local v0
    :catch_1
    move-exception v0

    .line 1279
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1

    .line 1273
    .end local v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    move-exception v0

    .line 1277
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 1287
    .end local v0
    :cond_0
    :try_start_3
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1288
    .local v0, "f":Ljavax/mail/Flags;
    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    .line 1290
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1291
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1292
    .local v2, "matches":[I
    array-length v3, v2

    monitor-exit v1

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v3

    .line 1290
    .end local v2
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2

    .line 1296
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_3
    move-exception v1

    .line 1298
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_8
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1294
    .end local v1
    :catch_4
    move-exception v1

    .line 1295
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1265
    .end local v0
    .end local v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .locals 9
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 2294
    nop

    .line 2299
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 2306
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2307
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_2

    .line 2308
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 2309
    :cond_2
    return-void

    .line 2310
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2311
    return-void

    .line 2312
    :cond_4
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2313
    return-void

    .line 2317
    :cond_5
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v0, :cond_6

    .line 2320
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNEXPECTED RESPONSE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2321
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v1, "CONTACT javamail@sun.com"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2322
    return-void

    .line 2325
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2327
    .local v0, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v2, "EXISTS"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 2328
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v2

    .line 2329
    .local v2, "exists":I
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-gt v2, v1, :cond_7

    .line 2331
    return-void

    .line 2333
    :cond_7
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int v4, v2, v1

    .line 2334
    .local v4, "count":I
    new-array v5, v4, [Ljavax/mail/Message;

    .line 2337
    .local v5, "msgs":[Ljavax/mail/Message;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_8

    .line 2346
    .end local v1
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    goto/16 :goto_3

    .line 2340
    .restart local v1
    :cond_8
    new-instance v6, Lcom/sun/mail/imap/IMAPMessage;

    iget v7, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    iget v8, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    invoke-direct {v6, p0, v7, v8}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V

    .line 2341
    .local v6, "msg":Lcom/sun/mail/imap/IMAPMessage;
    aput-object v6, v5, v1

    .line 2342
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2337
    .end local v6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2348
    .end local v1
    .end local v2
    .end local v4
    .end local v5
    :cond_9
    const-string v2, "EXPUNGE"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2351
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2352
    .local v2, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 2356
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getMessageNumber()I

    move-result v4

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-lt v4, v5, :cond_a

    .line 2368
    .end local v4
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 2370
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz v4, :cond_e

    .line 2372
    new-array v3, v3, [Ljavax/mail/Message;

    aput-object v2, v3, v1

    .line 2373
    .local v3, "msgs":[Ljavax/mail/Message;
    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    .end local v3
    goto :goto_3

    .line 2359
    .restart local v4
    :cond_a
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/IMAPMessage;

    .line 2360
    .local v5, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2361
    goto :goto_2

    .line 2364
    :cond_b
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/mail/imap/IMAPMessage;->setSequenceNumber(I)V

    .line 2356
    .end local v5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2376
    .end local v2
    .end local v4
    :cond_c
    const-string v1, "FETCH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2379
    nop

    .line 2380
    move-object v1, v0

    check-cast v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 2382
    .local v1, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v2, Ljavax/mail/Flags;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Ljavax/mail/Flags;

    .line 2384
    .local v2, "flags":Ljavax/mail/Flags;
    if-eqz v2, :cond_e

    .line 2385
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    .line 2386
    .local v4, "msg":Lcom/sun/mail/imap/IMAPMessage;
    if-eqz v4, :cond_e

    .line 2387
    invoke-virtual {v4, v2}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V

    .line 2388
    nop

    .line 2389
    nop

    .line 2388
    invoke-virtual {p0, v3, v4}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    .end local v4
    goto :goto_3

    .line 2393
    .end local v1
    .end local v2
    :cond_d
    const-string v1, "RECENT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2395
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 2397
    :cond_e
    :goto_3
    return-void
.end method

.method handleResponses([Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;

    .line 2406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 2410
    .end local v0
    return-void

    .line 2407
    .restart local v0
    :cond_0
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 2408
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponse(Lcom/sun/mail/iap/Response;)V

    .line 2406
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized hasNewMessages()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 769
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 780
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    if-lez v3, :cond_0

    move v1, v2

    nop

    :cond_0
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 771
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 775
    .end local v1
    :catch_1
    move-exception v1

    .line 776
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 771
    .end local v1
    :goto_0
    monitor-exit v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 784
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 789
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$7;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 807
    .local v0, "b":Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_2

    .line 809
    monitor-exit p0

    return v1

    .line 810
    :cond_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v1

    .line 768
    .end local v0
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public idle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2188
    nop

    .line 2189
    monitor-enter p0

    .line 2190
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2191
    const-string v0, "IDLE not supported"

    .line 2192
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$19;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$19;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2191
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2211
    .local v0, "started":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2212
    monitor-exit p0

    return-void

    .line 2189
    .end local v0
    :cond_0
    monitor-exit p0

    .line 2231
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 2233
    .local v0, "r":Lcom/sun/mail/iap/Response;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2234
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_2

    .line 2235
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2233
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2236
    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 2237
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2238
    monitor-exit v1

    .line 2254
    .end local v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result v0

    .line 2255
    .local v0, "minidle":I
    if-lez v0, :cond_3

    .line 2257
    int-to-long v1, v0

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2258
    :catch_0
    move-exception v1

    .line 2260
    :cond_3
    :goto_2
    return-void

    .line 2233
    .local v0, "r":Lcom/sun/mail/iap/Response;
    :goto_3
    :try_start_4
    monitor-exit v1

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 2244
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v1

    .line 2245
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 2241
    .end local v1
    :catch_2
    move-exception v1

    .line 2243
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .end local v1
    goto :goto_0

    .line 2189
    .end local v0
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1147
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1149
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v1

    .line 1145
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v0

    .line 1154
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v0

    .line 1145
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 1144
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized isSubscribed()Z
    .locals 4

    monitor-enter p0

    .line 675
    const/4 v0, 0x0

    :try_start_0
    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 677
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v1, :cond_0

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v1, :cond_0

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "lname":Ljava/lang/String;
    goto :goto_0

    .line 680
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 683
    .restart local v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$4;

    invoke-direct {v2, p0, v1}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_1

    .line 689
    :catch_0
    move-exception v2

    .line 692
    :goto_1
    if-eqz v0, :cond_1

    .line 693
    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v2

    .line 694
    .local v2, "i":I
    aget-object v3, v0, v2

    iget-boolean v3, v3, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    .line 696
    .end local v2
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 674
    .end local v0
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public listRights(Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2112
    const-string v0, "ACL not supported"

    .line 2113
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$16;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$16;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    .line 2112
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/Rights;

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

    .line 581
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public myRights()Lcom/sun/mail/imap/Rights;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2129
    const-string v0, "ACL not supported"

    .line 2130
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$17;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$17;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2129
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public declared-synchronized open(I)V
    .locals 10
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 893
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 895
    const/4 v0, 0x0

    .line 897
    .local v0, "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/IMAPStore;->getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 899
    const/4 v1, 0x0

    .line 901
    .local v1, "exc":Lcom/sun/mail/iap/CommandFailedException;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 909
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 912
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 913
    :try_start_2
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 922
    :catch_0
    move-exception v5

    goto/16 :goto_5

    .line 916
    :catch_1
    move-exception v4

    goto/16 :goto_7

    .line 915
    :cond_0
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v6

    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v0, v6

    .line 935
    :goto_0
    :try_start_3
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-eq v6, p1, :cond_2

    .line 936
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-ne v6, v5, :cond_1

    .line 937
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v6, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z

    move-result v6

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v6, :cond_1

    goto :goto_3

    .line 942
    :cond_1
    :try_start_4
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 943
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    :try_end_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 953
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 944
    :catch_2
    move-exception v5

    .line 947
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V

    .line 951
    :try_end_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 952
    .end local v5
    goto :goto_2

    .line 950
    .restart local v5
    :catchall_1
    move-exception v6

    .line 951
    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 952
    throw v6

    .line 948
    :catch_3
    move-exception v6

    .line 951
    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 953
    .end local v5
    :goto_1
    nop

    .line 954
    :goto_2
    :try_start_7
    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 955
    new-instance v3, Ljavax/mail/ReadOnlyFolderException;

    .line 956
    const-string v4, "Cannot open in desired mode"

    .line 955
    invoke-direct {v3, p0, v4}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 963
    :cond_2
    :goto_3
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 964
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 965
    iget v4, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    .line 966
    iget-object v4, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;

    .line 967
    iget-object v4, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 968
    iget v4, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 969
    iget v4, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 970
    iget-wide v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 971
    iget-wide v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 974
    new-instance v4, Ljava/util/Vector;

    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-direct {v4, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    .line 976
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-lt v4, v6, :cond_3

    .line 901
    .end local v4
    monitor-exit v2

    goto :goto_8

    .line 977
    .restart local v4
    :cond_3
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    new-instance v7, Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v4, 0x1

    invoke-direct {v7, p0, v8, v9}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 976
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 922
    .end local v4
    :goto_5
    nop

    .line 925
    .restart local v5
    :try_start_8
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V

    :try_end_8
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    .line 928
    :catchall_2
    move-exception v6

    goto :goto_6

    .line 926
    :catch_4
    move-exception v6

    .line 929
    :goto_6
    :try_start_9
    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 930
    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 931
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 916
    .end local v5
    :goto_7
    nop

    .line 918
    .local v4, "cex":Lcom/sun/mail/iap/CommandFailedException;
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 919
    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 920
    move-object v1, v4

    .line 921
    monitor-exit v2

    .line 986
    .end local v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_8
    if-eqz v1, :cond_5

    .line 987
    :try_start_a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 989
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/2addr v2, v5

    if-nez v2, :cond_4

    .line 990
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "folder cannot contain messages"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 991
    :cond_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 994
    :cond_5
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 995
    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 996
    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 999
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V

    .line 1000
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    monitor-exit p0

    return-void

    .line 901
    :catchall_3
    move-exception v3

    :try_start_b
    monitor-exit v2

    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v3

    .line 892
    .end local v0
    .end local v1
    .end local p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 1
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    monitor-enter p0

    .line 2638
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq p1, v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2640
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 2637
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public removeACL(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2057
    const-string v0, "ACL not supported"

    .line 2058
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$15;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$15;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2065
    return-void
.end method

.method public removeRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2089
    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2090
    return-void
.end method

.method public declared-synchronized renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 867
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 868
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 869
    invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_1

    .line 873
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$9;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    .line 880
    .local v0, "ret":Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 881
    monitor-exit p0

    return v1

    .line 883
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 884
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 885
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V

    .line 886
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 870
    .end local v0
    :cond_1
    :try_start_2
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t rename across Stores"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    .end local p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 5
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1643
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1646
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    check-cast v0, [Ljavax/mail/Message;

    .line 1648
    .local v0, "matchMsgs":[Ljavax/mail/Message;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1649
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1650
    .local v2, "matches":[I
    if-eqz v2, :cond_1

    .line 1651
    array-length v3, v2

    new-array v3, v3, [Lcom/sun/mail/imap/IMAPMessage;

    move-object v0, v3

    .line 1653
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_0

    .end local v2
    .end local v3
    goto :goto_1

    .line 1654
    .restart local v2
    .restart local v3
    :cond_0
    aget v4, v2, v3

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1653
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1648
    .end local v2
    .end local v3
    :cond_1
    :goto_1
    monitor-exit v1

    .line 1657
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1648
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 1667
    .end local v0
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    .line 1669
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1665
    .end local v0
    :catch_1
    move-exception v0

    .line 1666
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 1662
    .end local v0
    :catch_2
    move-exception v0

    .line 1664
    .local v0, "sex":Ljavax/mail/search/SearchException;
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v1

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1659
    .end local v0
    :catch_3
    move-exception v0

    .line 1661
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_6
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v1

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1642
    .end local v0
    .end local p1
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 7
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1680
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1682
    array-length v0, p2

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1684
    monitor-exit p0

    return-object p2

    .line 1687
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    move-object v1, v0

    check-cast v1, [Ljavax/mail/Message;

    .line 1689
    .local v1, "matchMsgs":[Ljavax/mail/Message;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1690
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1691
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-static {p2, v0}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v0

    .line 1692
    .local v0, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v0, :cond_3

    .line 1695
    invoke-virtual {v3, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v4

    .line 1696
    .local v4, "matches":[I
    if-eqz v4, :cond_2

    .line 1697
    array-length v5, v4

    new-array v5, v5, [Lcom/sun/mail/imap/IMAPMessage;

    move-object v1, v5

    .line 1698
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-lt v5, v6, :cond_1

    .end local v0
    .end local v3
    .end local v4
    .end local v5
    goto :goto_1

    .line 1699
    .restart local v0
    .restart local v3
    .restart local v4
    .restart local v5
    :cond_1
    aget v6, v4, v5

    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v6

    aput-object v6, v1, v5

    .line 1698
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1689
    .end local v0
    .end local v3
    .end local v4
    .end local v5
    :cond_2
    :goto_1
    monitor-exit v2

    .line 1702
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1693
    .restart local v0
    .restart local v3
    :cond_3
    :try_start_3
    new-instance v4, Ljavax/mail/MessageRemovedException;

    .line 1694
    const-string v5, "Messages have been removed"

    .line 1693
    invoke-direct {v4, v5}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1689
    .end local v0
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit v2

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1712
    .end local v1
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    .line 1714
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1710
    .end local v0
    :catch_1
    move-exception v0

    .line 1711
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 1707
    .end local v0
    :catch_2
    move-exception v0

    .line 1709
    .local v0, "sex":Ljavax/mail/search/SearchException;
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v1

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1704
    .end local v0
    :catch_3
    move-exception v0

    .line 1706
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_6
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v1

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1679
    .end local v0
    .end local p1
    .end local p2
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .locals 5
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1016
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1017
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V

    .line 1019
    array-length v0, p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1020
    monitor-exit p0

    return-void

    .line 1022
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1025
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    .line 1026
    .local v2, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v2, :cond_1

    .line 1029
    invoke-virtual {v1, v2, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V

    .line 1022
    .end local v1
    .end local v2
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    .line 1036
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 1027
    .restart local v1
    .restart local v2
    :cond_1
    :try_start_4
    new-instance v3, Ljavax/mail/MessageRemovedException;

    .line 1028
    const-string v4, "Messages have been removed"

    .line 1027
    invoke-direct {v3, v4}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1022
    .end local v1
    .end local v2
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1032
    :catch_0
    move-exception v1

    .line 1033
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1030
    .end local v1
    :catch_1
    move-exception v1

    .line 1031
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1022
    .end local v1
    :goto_0
    monitor-exit v0

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 1015
    .end local p1
    .end local p2
    .end local p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 2
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2009
    const-string v0, "QUOTA not supported"

    .line 2010
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$13;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$13;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V

    .line 2009
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2017
    return-void
.end method

.method public declared-synchronized setSubscribed(Z)V
    .locals 1
    .param p1, "subscribe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 704
    :try_start_0
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 713
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 703
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method waitIfIdle()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2268
    nop

    .line 2269
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-nez v0, :cond_0

    .line 2279
    return-void

    .line 2270
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2271
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 2272
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 2276
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2277
    :catch_0
    move-exception v0

    goto :goto_0
.end method
