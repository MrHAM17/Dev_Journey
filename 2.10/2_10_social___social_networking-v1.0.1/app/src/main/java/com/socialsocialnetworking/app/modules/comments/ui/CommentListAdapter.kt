package com.socialsocialnetworking.app.modules.comments.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.databinding.RowCommentlistBinding
import com.socialsocialnetworking.app.modules.comments.`data`.model.CommentlistRowModel
import kotlin.Int
import kotlin.collections.List

class CommentListAdapter(
  var list: List<CommentlistRowModel>
) : RecyclerView.Adapter<CommentListAdapter.RowCommentlistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCommentlistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_commentlist,parent,false)
    return RowCommentlistVH(view)
  }

  override fun onBindViewHolder(holder: RowCommentlistVH, position: Int) {
    val commentlistRowModel = CommentlistRowModel()
    // TODO uncomment following line after integration with data source
    // val commentlistRowModel = list[position]
    holder.binding.commentlistRowModel = commentlistRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CommentlistRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: CommentlistRowModel
    ) {
    }
  }

  inner class RowCommentlistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCommentlistBinding = RowCommentlistBinding.bind(itemView)
  }
}
