.class public Ljavax/mail/event/ConnectionEvent;
.super Ljavax/mail/event/MailEvent;
.source "ConnectionEvent.java"


# static fields
.field public static final CLOSED:I = 0x3

.field public static final DISCONNECTED:I = 0x2

.field public static final OPENED:I = 0x1

.field private static final serialVersionUID:J = -0x19bffd629136067dL


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .line 75
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 76
    iput p2, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    .line 77
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;

    .line 91
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/ConnectionListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/ConnectionListener;->opened(Ljavax/mail/event/ConnectionEvent;)V

    goto :goto_0

    .line 93
    :cond_0
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 94
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/ConnectionListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/ConnectionListener;->disconnected(Ljavax/mail/event/ConnectionEvent;)V

    goto :goto_0

    .line 95
    :cond_1
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 96
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/ConnectionListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/ConnectionListener;->closed(Ljavax/mail/event/ConnectionEvent;)V

    .line 97
    :cond_2
    :goto_0
    return-void
.end method

.method public getType()I
    .locals 1

    .line 84
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    return v0
.end method
