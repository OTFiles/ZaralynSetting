.class Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "UsbDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->getCandidates()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;
    .param p2, "x0"    # Z

    .line 89
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->val$key:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->val$key:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->val$title:Ljava/lang/String;

    return-object v0
.end method
