.class Lcom/android/music/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/music/RingtonePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/music/RingtonePickerActivity;

    .line 254
    iput-object p1, p0, Lcom/android/music/RingtonePickerActivity$1;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 261
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$1;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0, p2}, Lcom/android/music/RingtonePickerActivity;->access$002(Lcom/android/music/RingtonePickerActivity;I)I

    .line 264
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$1;->this$0:Lcom/android/music/RingtonePickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/android/music/RingtonePickerActivity;->access$100(Lcom/android/music/RingtonePickerActivity;II)V

    .line 265
    return-void
.end method
