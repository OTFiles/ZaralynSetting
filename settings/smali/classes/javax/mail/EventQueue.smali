.class Ljavax/mail/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/EventQueue$QueueElement;
    }
.end annotation


# instance fields
.field private head:Ljavax/mail/EventQueue$QueueElement;

.field private qThread:Ljava/lang/Thread;

.field private tail:Ljavax/mail/EventQueue$QueueElement;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    .line 71
    iput-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    .line 75
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JavaMail-EventQueue"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    .line 76
    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 77
    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method

.method private declared-synchronized dequeue()Ljavax/mail/EventQueue$QueueElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 107
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    .line 110
    .local v0, "elt":Ljavax/mail/EventQueue$QueueElement;
    iget-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;

    iput-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    .line 111
    iget-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 112
    iput-object v2, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    goto :goto_1

    .line 114
    :cond_0
    iget-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    iput-object v2, v1, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;

    .line 116
    :goto_1
    iput-object v2, v0, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;

    iput-object v2, v0, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;

    .line 117
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 108
    .end local v0
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method


# virtual methods
.method public declared-synchronized enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    monitor-enter p0

    .line 84
    :try_start_0
    new-instance v0, Ljavax/mail/EventQueue$QueueElement;

    invoke-direct {v0, p1, p2}, Ljavax/mail/EventQueue$QueueElement;-><init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 86
    .local v0, "newElt":Ljavax/mail/EventQueue$QueueElement;
    iget-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    if-nez v1, :cond_0

    .line 87
    iput-object v0, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    .line 88
    iput-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    iput-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;

    .line 91
    iget-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    iput-object v0, v1, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;

    .line 92
    iput-object v0, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    .line 94
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 95
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 83
    .end local v0
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public run()V
    .locals 6

    .line 128
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/EventQueue;->dequeue()Ljavax/mail/EventQueue$QueueElement;

    move-result-object v0

    move-object v1, v0

    .local v1, "qe":Ljavax/mail/EventQueue$QueueElement;
    if-nez v0, :cond_0

    goto :goto_3

    .line 129
    :cond_0
    iget-object v0, v1, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 130
    .local v0, "e":Ljavax/mail/event/MailEvent;
    iget-object v2, v1, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    .line 132
    .local v2, "v":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v3, v4, :cond_1

    .line 141
    .end local v3
    const/4 v1, 0x0

    const/4 v0, 0x0

    .end local v0
    .end local v1
    .end local v2
    goto :goto_0

    .line 134
    .restart local v0
    .restart local v1
    .restart local v2
    .restart local v3
    :cond_1
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/mail/event/MailEvent;->dispatch(Ljava/lang/Object;)V

    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 135
    :catch_0
    move-exception v4

    .line 136
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2
    instance-of v5, v4, Ljava/lang/InterruptedException;

    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v5, :cond_2

    .line 137
    goto :goto_3

    .line 132
    .end local v4
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 143
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :catch_1
    move-exception v0

    .line 146
    :goto_3
    return-void
.end method

.method stop()V
    .locals 1

    .line 152
    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    .line 156
    :cond_0
    return-void
.end method
