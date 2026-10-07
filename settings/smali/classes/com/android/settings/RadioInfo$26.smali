.class Lcom/android/settings/RadioInfo$26;
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

    .line 1495
    iput-object p1, p0, Lcom/android/settings/RadioInfo$26;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.CARRIER_PROVISIONING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.omadm.service/.DMIntentReceiver"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1500
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1501
    iget-object v2, p0, Lcom/android/settings/RadioInfo$26;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v2, v0}, Lcom/android/settings/RadioInfo;->sendBroadcast(Landroid/content/Intent;)V

    .line 1502
    return-void
.end method
