.class Lcom/android/settings/sim/SimSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;Ljava/lang/Integer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimSettings;
    .param p2, "x0"    # Ljava/lang/Integer;

    .line 245
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    iput p3, p0, Lcom/android/settings/sim/SimSettings$2;->val$i:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$2;->val$i:I

    aput p1, v0, v1

    .line 250
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$200(Lcom/android/settings/sim/SimSettings;)V

    .line 251
    return-void
.end method
