.class Lcom/android/settings/TouchModeSettings$1;
.super Ljava/lang/Object;
.source "TouchModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TouchModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TouchModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TouchModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TouchModeSettings;

    .line 59
    iput-object p1, p0, Lcom/android/settings/TouchModeSettings$1;->this$0:Lcom/android/settings/TouchModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings$1;->this$0:Lcom/android/settings/TouchModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/TouchModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 63
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Lcom/android/settings/TouchModeSettings$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/TouchModeSettings$1$1;-><init>(Lcom/android/settings/TouchModeSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 74
    :cond_0
    return-void
.end method
