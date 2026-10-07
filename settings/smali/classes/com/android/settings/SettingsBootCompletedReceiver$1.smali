.class Lcom/android/settings/SettingsBootCompletedReceiver$1;
.super Ljava/lang/Object;
.source "SettingsBootCompletedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsBootCompletedReceiver;->nowResetUsbConnectPcEnableExchange(Landroid/content/Context;)V
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

    .line 390
    iput-object p1, p0, Lcom/android/settings/SettingsBootCompletedReceiver$1;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 393
    invoke-static {}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadIsFactoryFromFwqAboutPadSettings()V

    .line 394
    return-void
.end method
