.class public Lnet/lingala/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# instance fields
.field private cancelAllTasks:Z

.field private currentOperation:I

.field private exception:Ljava/lang/Throwable;

.field private fileName:Ljava/lang/String;

.field private pause:Z

.field private percentDone:I

.field private result:I

.field private state:I

.field private totalWork:J

.field private workCompleted:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 59
    return-void
.end method


# virtual methods
.method public endProgressMonitorError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 146
    const/4 v0, 0x2

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:I

    .line 147
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Throwable;

    .line 148
    return-void
.end method

.method public endProgressMonitorSuccess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:I

    .line 142
    return-void
.end method

.method public getState()I
    .locals 1

    .line 62
    iget v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:I

    return v0
.end method

.method public isCancelAllTasks()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentOperation:I

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:I

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    .line 154
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    .line 155
    iput-wide v1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    .line 156
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 157
    return-void
.end method

.method public setCurrentOperation(I)V
    .locals 0
    .param p1, "currentOperation"    # I

    .line 128
    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentOperation:I

    .line 129
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .line 112
    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:I

    .line 113
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 66
    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:I

    .line 67
    return-void
.end method

.method public setTotalWork(J)V
    .locals 0
    .param p1, "totalWork"    # J

    .line 74
    iput-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    .line 75
    return-void
.end method

.method public updateWorkCompleted(J)V
    .locals 4
    .param p1, "workCompleted"    # J

    .line 82
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    .line 84
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 85
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 86
    iget v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 87
    iput v1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 90
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    if-nez v0, :cond_1

    .line 97
    return-void

    .line 92
    :cond_1
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method
