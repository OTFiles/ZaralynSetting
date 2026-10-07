.class Lcom/android/settings/SettingsFactoryDslAppsInstallService$5$1;
.super Ljava/lang/Object;
.source "SettingsFactoryDslAppsInstallService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;

    .line 731
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5$1;->this$1:Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 735
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 736
    return-void
.end method
