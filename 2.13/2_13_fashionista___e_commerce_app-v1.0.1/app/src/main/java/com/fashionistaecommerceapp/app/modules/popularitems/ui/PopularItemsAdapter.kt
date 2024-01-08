package com.fashionistaecommerceapp.app.modules.popularitems.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.databinding.RowPopularitemsBinding
import com.fashionistaecommerceapp.app.modules.popularitems.`data`.model.PopularitemsRowModel
import kotlin.Int
import kotlin.collections.List

class PopularItemsAdapter(
  var list: List<PopularitemsRowModel>
) : RecyclerView.Adapter<PopularItemsAdapter.RowPopularitemsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPopularitemsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_popularitems,parent,false)
    return RowPopularitemsVH(view)
  }

  override fun onBindViewHolder(holder: RowPopularitemsVH, position: Int) {
    val popularitemsRowModel = PopularitemsRowModel()
    // TODO uncomment following line after integration with data source
    // val popularitemsRowModel = list[position]
    holder.binding.popularitemsRowModel = popularitemsRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PopularitemsRowModel>) {
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
      item: PopularitemsRowModel
    ) {
    }
  }

  inner class RowPopularitemsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPopularitemsBinding = RowPopularitemsBinding.bind(itemView)
    init {
      binding.linearCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, PopularitemsRowModel())
      }
    }
  }
}
