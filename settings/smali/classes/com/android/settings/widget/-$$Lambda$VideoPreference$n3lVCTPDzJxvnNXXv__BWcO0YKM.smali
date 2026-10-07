.class public final synthetic Lcom/android/settings/widget/-$$Lambda$VideoPreference$n3lVCTPDzJxvnNXXv__BWcO0YKM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/widget/VideoPreference;

.field private final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$n3lVCTPDzJxvnNXXv__BWcO0YKM;->f$0:Lcom/android/settings/widget/VideoPreference;

    iput-object p2, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$n3lVCTPDzJxvnNXXv__BWcO0YKM;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$n3lVCTPDzJxvnNXXv__BWcO0YKM;->f$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v1, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$n3lVCTPDzJxvnNXXv__BWcO0YKM;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/settings/widget/VideoPreference;->lambda$onBindViewHolder$2(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
