.class Lcom/android/settings/SettingsApp$1;
.super Ljava/lang/Object;
.source "SettingsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsApp;->initUncaughtException()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsApp;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsApp;

    .line 141
    iput-object p1, p0, Lcom/android/settings/SettingsApp$1;->this$0:Lcom/android/settings/SettingsApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 146
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 163
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/settings/SettingsApp$1;->this$0:Lcom/android/settings/SettingsApp;

    invoke-static {v1, v0}, Lcom/android/settings/SettingsApp;->access$000(Lcom/android/settings/SettingsApp;Ljava/lang/Throwable;)Z

    move-result v1

    .line 150
    .local v1, "iResultCatch1":Z
    const/4 v2, 0x0

    .line 151
    .local v2, "iResultCatch2":Z
    if-nez v1, :cond_1

    .line 152
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    .line 153
    .local v3, "mDefaultException":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v3, :cond_1

    .line 154
    const/4 v2, 0x1

    .line 155
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 158
    .end local v3
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    .line 159
    :cond_2
    nop

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0
    .end local v1
    .end local v2
    goto :goto_1
.end method
