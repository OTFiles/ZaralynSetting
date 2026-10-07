.class public Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PasswordRequirementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/PasswordRequirementAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordRequirementViewHolder"
.end annotation


# instance fields
.field private mDescriptionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 70
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->mDescriptionText:Landroid/widget/TextView;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    .line 66
    iget-object v0, p0, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->mDescriptionText:Landroid/widget/TextView;

    return-object v0
.end method
