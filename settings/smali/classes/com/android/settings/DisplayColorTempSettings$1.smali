.class Lcom/android/settings/DisplayColorTempSettings$1;
.super Ljava/lang/Object;
.source "DisplayColorTempSettings.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplayColorTempSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplayColorTempSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplayColorTempSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 55
    iput-object p1, p0, Lcom/android/settings/DisplayColorTempSettings$1;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$1;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v0}, Lcom/android/settings/DisplayColorTempSettings;->access$000(Lcom/android/settings/DisplayColorTempSettings;)V

    .line 59
    return-void
.end method
