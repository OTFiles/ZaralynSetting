.class Lcom/android/settings/SettingsLauncherParentModeExchange$2;
.super Ljava/lang/Object;
.source "SettingsLauncherParentModeExchange.java"

# interfaces
.implements Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLauncherParentModeExchange;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 148
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$2;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exchangeEditContentLengthExchange(Z)V
    .locals 1
    .param p1, "bEnable"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$2;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$100(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    return-void
.end method
