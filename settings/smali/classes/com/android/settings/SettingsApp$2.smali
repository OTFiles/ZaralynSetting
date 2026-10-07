.class Lcom/android/settings/SettingsApp$2;
.super Ljava/lang/Object;
.source "SettingsApp.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


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

    .line 167
    iput-object p1, p0, Lcom/android/settings/SettingsApp$2;->this$0:Lcom/android/settings/SettingsApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "td"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 171
    iget-object v0, p0, Lcom/android/settings/SettingsApp$2;->this$0:Lcom/android/settings/SettingsApp;

    invoke-static {v0, p2}, Lcom/android/settings/SettingsApp;->access$000(Lcom/android/settings/SettingsApp;Ljava/lang/Throwable;)Z

    move-result v0

    .line 172
    .local v0, "iResultCatch1":Z
    const/4 v1, 0x0

    .line 173
    .local v1, "iResultCatch2":Z
    if-nez v0, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/settings/SettingsApp$2;->this$0:Lcom/android/settings/SettingsApp;

    invoke-static {v2}, Lcom/android/settings/SettingsApp;->access$100(Lcom/android/settings/SettingsApp;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v1, 0x1

    .line 176
    iget-object v2, p0, Lcom/android/settings/SettingsApp$2;->this$0:Lcom/android/settings/SettingsApp;

    invoke-static {v2}, Lcom/android/settings/SettingsApp;->access$100(Lcom/android/settings/SettingsApp;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 179
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 180
    :cond_1
    if-eqz p2, :cond_2

    .line 181
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    :cond_2
    return-void
.end method
