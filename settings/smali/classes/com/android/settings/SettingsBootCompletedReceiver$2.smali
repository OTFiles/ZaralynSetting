.class Lcom/android/settings/SettingsBootCompletedReceiver$2;
.super Ljava/lang/Object;
.source "SettingsBootCompletedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsBootCompletedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsBootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsBootCompletedReceiver;

    .line 988
    iput-object p1, p0, Lcom/android/settings/SettingsBootCompletedReceiver$2;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 991
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsBootCompletedReceiver;->recheckoutAllAppLauncherStatus(Landroid/content/Context;I)V

    .line 992
    return-void
.end method
