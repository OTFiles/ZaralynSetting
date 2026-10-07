.class public final synthetic Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$-wYUc2a9Y89ehsHG44vpFDdnSk8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Lcom/android/settings/security/SecuritySettings;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/settings/security/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$-wYUc2a9Y89ehsHG44vpFDdnSk8;->f$0:Z

    iput-object p2, p0, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$-wYUc2a9Y89ehsHG44vpFDdnSk8;->f$1:Lcom/android/settings/security/SecuritySettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$-wYUc2a9Y89ehsHG44vpFDdnSk8;->f$0:Z

    iget-object v1, p0, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$-wYUc2a9Y89ehsHG44vpFDdnSk8;->f$1:Lcom/android/settings/security/SecuritySettings;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/security/UnificationConfirmationDialog;->lambda$onCreateDialog$0(ZLcom/android/settings/security/SecuritySettings;Landroid/content/DialogInterface;I)V

    return-void
.end method
