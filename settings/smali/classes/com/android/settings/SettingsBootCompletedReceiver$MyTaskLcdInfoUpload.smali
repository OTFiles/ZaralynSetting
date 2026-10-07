.class Lcom/android/settings/SettingsBootCompletedReceiver$MyTaskLcdInfoUpload;
.super Landroid/os/AsyncTask;
.source "SettingsBootCompletedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsBootCompletedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTaskLcdInfoUpload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsBootCompletedReceiver;


# direct methods
.method private constructor <init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V
    .locals 0

    .line 2104
    iput-object p1, p0, Lcom/android/settings/SettingsBootCompletedReceiver$MyTaskLcdInfoUpload;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsBootCompletedReceiver;Lcom/android/settings/SettingsBootCompletedReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SettingsBootCompletedReceiver;
    .param p2, "x1"    # Lcom/android/settings/SettingsBootCompletedReceiver$1;

    .line 2104
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver$MyTaskLcdInfoUpload;-><init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 2108
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$MyTaskLcdInfoUpload;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsBootCompletedReceiver;->writeLcdInfoToFtpTask(Landroid/content/Context;)V

    .line 2109
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2104
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver$MyTaskLcdInfoUpload;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
