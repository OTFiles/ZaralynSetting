.class Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->inflateOption(JLcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;ZLandroid/widget/LinearLayout;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

.field final synthetic val$areFunctionsSupported:Z

.field final synthetic val$function:J


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;ZJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 211
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->val$areFunctionsSupported:Z

    iput-wide p3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->val$function:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 219
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->val$areFunctionsSupported:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$100(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v0

    .line 221
    .local v0, "previousFunction":J
    iget-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->val$function:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-nez v2, :cond_3

    .line 222
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v2, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$202(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;J)J

    .line 224
    iget-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->val$function:J

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 226
    const/4 v2, 0x0

    move v3, v2

    .local v3, "inum":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$300(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 227
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$300(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq p1, v4, :cond_0

    .line 228
    move-object v4, p1

    check-cast v4, Landroid/widget/Checkable;

    invoke-interface {v4, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    .line 230
    :cond_0
    move-object v4, p1

    check-cast v4, Landroid/widget/Checkable;

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 226
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v3
    :cond_1
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$500(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 237
    invoke-static {v3}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$400(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;

    move-result-object v3

    .line 236
    invoke-virtual {v2, v5, v5, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_2

    .line 239
    :cond_2
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$100(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->val$function:J

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    .line 244
    .end local v0
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$000(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->finish()V

    .line 246
    return-void
.end method
