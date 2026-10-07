.class Lcom/android/settings/wfd/WifiDisplaySettings$1$1;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings$1;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wfd/WifiDisplaySettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/wfd/WifiDisplaySettings$1;

    .line 350
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 353
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$1;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->pauseWifiDisplay()V

    .line 354
    return-void
.end method
