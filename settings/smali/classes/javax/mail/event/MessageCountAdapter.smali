.class public abstract Ljavax/mail/event/MessageCountAdapter;
.super Ljava/lang/Object;
.source "MessageCountAdapter.java"

# interfaces
.implements Ljavax/mail/event/MessageCountListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messagesAdded(Ljavax/mail/event/MessageCountEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/MessageCountEvent;

    .line 52
    return-void
.end method

.method public messagesRemoved(Ljavax/mail/event/MessageCountEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/MessageCountEvent;

    .line 53
    return-void
.end method
