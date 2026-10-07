.class Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;
.super Ljava/lang/Object;
.source "SettingsBootCompletedReceiver.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsBootCompletedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResearchLogOutHandlerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsBootCompletedReceiver;


# direct methods
.method private constructor <init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V
    .locals 0

    .line 1947
    iput-object p1, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsBootCompletedReceiver;Lcom/android/settings/SettingsBootCompletedReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SettingsBootCompletedReceiver;
    .param p2, "x1"    # Lcom/android/settings/SettingsBootCompletedReceiver$1;

    .line 1947
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1951
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x271a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsBootCompletedReceiver;->appLogsExport1(II)V

    .line 1956
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1957
    :catch_0
    move-exception v0

    .line 1958
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1960
    .end local v0
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iget-object v0, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->handlerLogThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iget-object v0, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->handlerLogThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1962
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iget-object v0, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->handlerLogThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1963
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iget-object v0, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->handlerLogThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1966
    :catch_1
    move-exception v0

    .line 1967
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_2

    .line 1964
    :catch_2
    move-exception v0

    .line 1965
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1968
    .end local v0
    :goto_1
    nop

    .line 1969
    :goto_2
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iput-object v1, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->handlerLogThread:Landroid/os/HandlerThread;

    .line 1972
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iget-object v0, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->LogTaskHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1973
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iget-object v0, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->LogTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1974
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iput-object v1, v0, Lcom/android/settings/SettingsBootCompletedReceiver;->LogTaskHandler:Landroid/os/Handler;

    .line 1978
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    goto :goto_3

    .line 1976
    :catch_3
    move-exception v0

    .line 1977
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1979
    .end local v0
    :goto_3
    const/4 v0, 0x0

    return v0
.end method
