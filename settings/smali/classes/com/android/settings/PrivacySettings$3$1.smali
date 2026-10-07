.class Lcom/android/settings/PrivacySettings$3$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PrivacySettings$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/PrivacySettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/PrivacySettings$3;

    .line 289
    iput-object p1, p0, Lcom/android/settings/PrivacySettings$3$1;->this$1:Lcom/android/settings/PrivacySettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.need.alarm.reset"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/android/settings/PrivacySettings$3$1;->this$1:Lcom/android/settings/PrivacySettings$3;

    iget-object v1, v1, Lcom/android/settings/PrivacySettings$3;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v1}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 295
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    :cond_0
    const-wide/16 v2, 0x2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 302
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .end local v2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings$3$1;->this$1:Lcom/android/settings/PrivacySettings$3;

    iget-object v2, v2, Lcom/android/settings/PrivacySettings$3;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/android/settings/PrivacySettings;->access$100(Lcom/android/settings/PrivacySettings;)V

    .line 304
    return-void
.end method
