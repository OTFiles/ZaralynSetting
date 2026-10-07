.class Lcom/android/settings/SettingsRamFusion$1;
.super Ljava/lang/Object;
.source "SettingsRamFusion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsRamFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsRamFusion;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsRamFusion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsRamFusion;

    .line 88
    iput-object p1, p0, Lcom/android/settings/SettingsRamFusion$1;->this$0:Lcom/android/settings/SettingsRamFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0347

    if-eq v0, v1, :cond_0

    const v1, 0x7f0a037a

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    const-string v0, "persist.sys.ext_swap_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, "ramFusionState":I
    iget-object v2, p0, Lcom/android/settings/SettingsRamFusion$1;->this$0:Lcom/android/settings/SettingsRamFusion;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsRamFusion;->onclickEvent(Z)Z

    .line 96
    iget-object v2, p0, Lcom/android/settings/SettingsRamFusion$1;->this$0:Lcom/android/settings/SettingsRamFusion;

    invoke-virtual {v2, v1}, Lcom/android/settings/SettingsRamFusion;->updateRamFusionPref(Z)V

    .line 99
    .end local v0
    :goto_1
    return-void
.end method
