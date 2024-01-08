package com.tikpikshortvideosocialnetworking.app.modules.suggested.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowSuggestedBinding
import com.tikpikshortvideosocialnetworking.app.modules.suggested.`data`.model.SuggestedRowModel
import kotlin.Int
import kotlin.collections.List

class SuggestedAdapter(
  var list: List<SuggestedRowModel>
) : RecyclerView.Adapter<SuggestedAdapter.RowSuggestedVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSuggestedVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_suggested,parent,false)
    return RowSuggestedVH(view)
  }

  override fun onBindViewHolder(holder: RowSuggestedVH, position: Int) {
    val suggestedRowModel = SuggestedRowModel()
    // TODO uncomment following line after integration with data source
    // val suggestedRowModel = list[position]
    holder.binding.suggestedRowModel = suggestedRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SuggestedRowModel>) {
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
      item: SuggestedRowModel
    ) {
    }
  }

  inner class RowSuggestedVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSuggestedBinding = RowSuggestedBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SuggestedRowModel())
      }
    }
  }
}
