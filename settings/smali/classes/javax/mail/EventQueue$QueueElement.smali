.class Ljavax/mail/EventQueue$QueueElement;
.super Ljava/lang/Object;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/EventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueElement"
.end annotation


# instance fields
.field event:Ljavax/mail/event/MailEvent;

.field next:Ljavax/mail/EventQueue$QueueElement;

.field prev:Ljavax/mail/EventQueue$QueueElement;

.field vector:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 1
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;

    .line 60
    iput-object v0, p0, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;

    .line 61
    iput-object v0, p0, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 62
    iput-object v0, p0, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    .line 65
    iput-object p1, p0, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 66
    iput-object p2, p0, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    .line 67
    return-void
.end method
