package com.tikpikshortvideosocialnetworking.app.modules.postsaddsounds.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowPostsaddsoundsBinding
import com.tikpikshortvideosocialnetworking.app.modules.postsaddsounds.`data`.model.PostsaddsoundsRowModel
import kotlin.Int
import kotlin.collections.List

class PostsAddSoundsAdapter(
  var list: List<PostsaddsoundsRowModel>
) : RecyclerView.Adapter<PostsAddSoundsAdapter.RowPostsaddsoundsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPostsaddsoundsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_postsaddsounds,parent,false)
    return RowPostsaddsoundsVH(view)
  }

  override fun onBindViewHolder(holder: RowPostsaddsoundsVH, position: Int) {
    val postsaddsoundsRowModel = PostsaddsoundsRowModel()
    // TODO uncomment following line after integration with data source
    // val postsaddsoundsRowModel = list[position]
    holder.binding.postsaddsoundsRowModel = postsaddsoundsRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PostsaddsoundsRowModel>) {
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
      item: PostsaddsoundsRowModel
    ) {
    }
  }

  inner class RowPostsaddsoundsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPostsaddsoundsBinding = RowPostsaddsoundsBinding.bind(itemView)
  }
}
