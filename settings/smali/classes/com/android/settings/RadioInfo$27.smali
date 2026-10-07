.class Lcom/android/settings/RadioInfo$27;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .line 1505
    iput-object p1, p0, Lcom/android/settings/RadioInfo$27;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.TRIGGER_CARRIER_PROVISIONING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.omadm.service/.DMIntentReceiver"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1510
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1511
    iget-object v2, p0, Lcom/android/settings/RadioInfo$27;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v2, v0}, Lcom/android/settings/RadioInfo;->sendBroadcast(Landroid/content/Intent;)V

    .line 1512
    return-void
.end method
