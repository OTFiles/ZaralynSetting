.class Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
.super Ljava/lang/Object;
.source "IMAPStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/IMAPStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionPool"
.end annotation


# static fields
.field private static final ABORTING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final RUNNING:I


# instance fields
.field private authenticatedConnections:Ljava/util/Vector;

.field private clientTimeoutInterval:J

.field private debug:Z

.field private folders:Ljava/util/Vector;

.field private idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private idleState:I

.field private lastTimePruned:J

.field private poolSize:I

.field private pruningInterval:J

.field private separateStoreConnection:Z

.field private serverTimeoutInterval:J

.field private storeConnectionInUse:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    .line 202
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    .line 205
    const-wide/32 v1, 0xafc8

    iput-wide v1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    .line 208
    const-wide/32 v1, 0x1b7740

    iput-wide v1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    .line 215
    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    .line 218
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    .line 221
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z

    .line 267
    iput v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    .line 189
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    .locals 0

    .line 212
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-void
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z

    return-void
.end method

.method static synthetic access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 0

    .line 199
    iget-boolean p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    return p0
.end method

.method static synthetic access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    return p0
.end method

.method static synthetic access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    return-void
.end method

.method static synthetic access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-wide v0
.end method

.method static synthetic access$17(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    return-wide v0
.end method

.method static synthetic access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-void
.end method

.method static synthetic access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    .locals 0

    .line 267
    iget p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    return p0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    return-void
.end method

.method static synthetic access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    return-void
.end method

.method static synthetic access$21(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object p0
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z

    return p0
.end method

.method static synthetic access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    return p0
.end method

.method static synthetic access$5(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    .locals 0

    .line 205
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    return-void
.end method

.method static synthetic access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    .locals 0

    .line 208
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    return-void
.end method

.method static synthetic access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    return-void
.end method
